import 'package:flutter/material.dart';
import 'package:somrat/%20widget/custom_button.dart';
import 'package:somrat/%20widget/custom_color.dart';
import 'package:somrat/%20widget/myStyle.dart';
import 'package:somrat/ui/on_boarding3.dart';
import 'package:somrat/ui/signup.dart';
class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff191A22),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 65,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(22.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=> OnBoarding3()));
                    }, icon: Icon(Icons.close, color: Colors.white,)),
                    myStyle('Sign Up', 16, Colors.white, FontWeight.w700),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Align(
                alignment: Alignment.topLeft,
                child: myStyle('Your Email Address', 17, Colors.grey, FontWeight.normal),
              ),
            ),
            SizedBox(
              height: 15,
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
                      borderRadius: BorderRadius.circular(25),
                    ),

                ),
              ),
            ), SizedBox(
              height: 35,
            ),
        Padding(
          padding: const EdgeInsets.only(left: 18),
          child: Align(
            alignment: Alignment.topLeft,
            child: myStyle('Your Password', 17, Colors.grey, FontWeight.normal),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(

                borderRadius: BorderRadius.circular(15),
              ),
              prefixIcon: Icon(Icons.key, color: Colors.grey,),
              hintText: 'Enter your passowrd',

              hintStyle: TextStyle(
                color: Colors.grey,
              ),
              enabledBorder:  OutlineInputBorder(
                borderSide:  BorderSide(color: Colors.grey, width: 1.5),
                borderRadius: BorderRadius.circular(25),
              ),

            ),
          ),
        ),
            SizedBox(
              height: 25,
            ),
           Padding(padding: EdgeInsets.only(left: 16, right: 16),
           child:  InkWell(
             onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (_)=> Signup()));
             },
             child: customButton(60, double.infinity, btnColor, 28, myStyle('Login', 17, Colors.white, FontWeight.w600)),
           )
           )          ]
        ),
      ),
    );
  }
}
