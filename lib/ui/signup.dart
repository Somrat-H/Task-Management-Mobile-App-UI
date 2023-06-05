import 'package:flutter/material.dart';
import 'package:somrat/%20widget/custom_button.dart';
import 'package:somrat/%20widget/custom_color.dart';
import 'package:somrat/%20widget/myStyle.dart';
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
            Container(
              height: 65,
              width: 375,
              child: Padding(
                padding: const EdgeInsets.all(22.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=> OnBoarding3()));
                    }, icon: Icon(Icons.close, color: Colors.white,)),
                   InkWell(
                     onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (_)=> LogIn()));
                     },
                     child: myStyle('Login', 17, Colors.white, FontWeight.w600),
                   )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Align(
                alignment: Alignment.topLeft,
                child: myStyle('Your Email Address', 17, Colors.grey, FontWeight.normal),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(

                    borderRadius: BorderRadius.circular(15),
                  ),
                  prefixIcon: Icon(Icons.mail, color: Colors.grey,),
                  hintText: 'Enter your email address',

                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  enabledBorder:  OutlineInputBorder(
                    borderSide:  BorderSide(color: Colors.grey, width: 1.5),
                    borderRadius: BorderRadius.circular(25)
                  ),

                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(padding: EdgeInsets.only(left: 16, right: 16),
                child:  InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=> Stepper1()));
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
