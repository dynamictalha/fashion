import 'package:e_commerce/Widget/loginbtn.dart';
import 'package:e_commerce/Widget/text_field.dart';
import 'package:e_commerce/pages/Home_page.dart';
import 'package:e_commerce/pages/account_page.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var containerWidth = screenSize.width * 0.8;
    var containerHeight = screenSize.height * 0.7;

    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/img4.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black54,
                  Colors.black54,
                ],
              ),
            ),
            child: Center(
              child: Container(
                width: containerWidth,
                height: containerHeight,
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 30),
                    const Text(
                      "LOGIN",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text('Sign in to continue'),
                    const SizedBox(height: 30),
                    const MyTextField(hint: "username", obscureText: false, fillColor: Colors.black, icon: null,),
                    const SizedBox(height: 15),
                    const MyTextField(hint: "password", obscureText: true, fillColor: Colors.black, icon: null,),
                    const SizedBox(height: 35),
                    const LoginButton(forBackgroundcolor: Colors.white,textColor: Colors.black,text:"LOGIN" ,),
                    const Spacer(),
                    const Text("Don't have an account?"),
                    const SizedBox(height: 5),
                    MouseRegion(
                      onEnter: (_) {
                        setState(() {
                          _isHovering = true;
                        });
                      },
                      onExit: (_) {
                        setState(() {
                          _isHovering = false;
                        });
                      },
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => AccountPage()),
                          );
                        },
                        child: Text(
                          "Create a new account",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            decoration: _isHovering
                                ? TextDecoration.underline
                                : TextDecoration.none,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
