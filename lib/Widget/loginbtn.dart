import 'package:e_commerce/pages/Home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginButton extends StatefulWidget {
  final Color? forBackgroundcolor;
  final Color? textColor;
  final String text;
  // final void Function()? onTap;

  const LoginButton({
    super.key,
    required this.forBackgroundcolor,
    required this.textColor,
    required this.text,
    // required this.onTap
  });

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
      } ,
      child: Container(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: widget.forBackgroundcolor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.black,
            width: 2,
          ),
        ),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: widget.textColor,
            ),
          ),
        ),
      ),
    );
  }
}
