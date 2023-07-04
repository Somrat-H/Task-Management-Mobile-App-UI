import 'package:flutter/material.dart';
import 'package:somrat/ widget//custom_button.dart';
import 'package:somrat/ widget/custom_color.dart';
import 'package:somrat/%20widget/my_style.dart';
import 'package:somrat/ui/login.dart';
import 'package:somrat/ui/on_boarding3.dart';
import 'package:somrat/ui/stepper1.dart';
class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=> const OnBoarding3()));
                  }, icon: const Icon(Icons.close, color: Colors.white,)),
                 InkWell(
                  autofocus: false,
                   onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (_)=> const LogIn()));
                   },
                   child: myStyle('Login', 17, Colors.white, FontWeight.w600),
                 )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Align(
                alignment: Alignment.topLeft,
                child: myStyle('Your Email Address', 17, Colors.grey, FontWeight.normal),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(

                    borderRadius: BorderRadius.circular(15),
                  ),
                  prefixIcon: const Icon(Icons.mail, color: Colors.grey,),
                  hintText: 'Enter your email address',

                  hintStyle: const TextStyle(
                    color: Colors.grey,
                  ),
                  enabledBorder:  OutlineInputBorder(
                    borderSide:  const BorderSide(color: Colors.grey, width: 1.5),
                    borderRadius: BorderRadius.circular(25)
                  ),

                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(padding: const EdgeInsets.only(left: 16, right: 16),
                child:  InkWell(
                  autofocus: false,
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=> const Stepper1()));
                  },
                  child: customButton(60, double.infinity, btnColor, 28, myStyle('Sign Up', 17, Colors.white, FontWeight.w600)),
                )
            )

          ],
        ),
      ),
    );
  }
}
