import 'package:e_commerce/Widget/loginbtn.dart';
import 'package:e_commerce/Widget/text_field.dart';
import 'package:e_commerce/pages/login_page.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
   bool _isHovering = false;
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var containerWidth = screenSize.width * 0.8;

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("../images/img4.jpg"),
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
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 30),
                      const Text(
                        "Create a new account",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text('Already registered?'),

                      // back to login
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
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        },
                        child: Text(
                          "log in here",
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
                      const SizedBox(height: 30),
                      // first name
                      MyTextField(hint: "first name", obscureText: false, fillColor: Colors.white, icon: null),
                      const SizedBox(height: 15),
                      // second name
                      MyTextField(hint: "second name", obscureText: false, fillColor: Colors.white, icon: null),
                      const SizedBox(height: 15),
                      // birth date
                      MyTextField(hint: "birth date", obscureText: false, fillColor: Colors.white, icon: Icons.calendar_today, isDateField: true),
                      const SizedBox(height: 15),
                      // gender
                      MyTextField(hint: "gender", obscureText: false, fillColor: Colors.white, icon: null, isGenderField: true),
                      const SizedBox(height: 15),
                      // email
                      MyTextField(hint: "Email", obscureText: false, fillColor: Colors.white, icon: null),
                      const SizedBox(height: 15),
                      // password
                      MyTextField(hint: "password", obscureText: true, fillColor: Colors.white, icon: null),
                      const SizedBox(height: 15),
                      // confirm password
                      MyTextField(hint: "confirm password", obscureText: true, fillColor: Colors.white, icon: null),
                      const SizedBox(height: 30),
                      // login button
                      
                      LoginButton(forBackgroundcolor:Colors.white, textColor: Colors.black,text: "REGISTER",),
                    
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
