import 'package:flutter/material.dart';
import 'package:somrat/%20widget/custom_button.dart';
import 'package:somrat/%20widget/custom_color.dart';
import 'package:somrat/%20widget/myStyle.dart';
import 'package:somrat/ui/on_boarding3.dart';
import 'package:somrat/ui/signup.dart';
import 'package:somrat/ui/stepper2.dart';
class Stepper1 extends StatelessWidget {
  const Stepper1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 65,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(22.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=> const OnBoarding3()));
                    }, icon: const Icon(Icons.arrow_back_ios, color: Colors.white,)),
                   const SizedBox(width: 70,),
                   Padding(
                     padding: const EdgeInsets.only(top: 14),
                     child: Image.asset('assets/steepper1.png'),
                   ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20,),
            myStyle('Complete Your Profiles', 20, Colors.white, FontWeight.w700),
            const SizedBox(
              height: 18,
            ),
            Container(
              height: 90,
              width: 90,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey
              ),
              child: const Center(
                child: Icon(Icons.camera_alt, color: Colors.white,),
              ),
            ),
            const SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Align(
                alignment: Alignment.topLeft,
                child: myStyle('Your Full Name', 17, Colors.grey, FontWeight.normal),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(

                    borderRadius: BorderRadius.circular(15),
                  ),
                  prefixIcon: const Icon(Icons.person_4_rounded, color: Colors.grey,),
                  hintText: 'Enter your email address',

                  hintStyle: const TextStyle(
                    color: Colors.grey,
                  ),
                  enabledBorder:  OutlineInputBorder(
                    borderSide:  const BorderSide(color: Colors.grey, width: 1.5),
                    borderRadius: BorderRadius.circular(25),
                  ),

                ),
              ),
            ), const SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Align(
                alignment: Alignment.topLeft,
                child: myStyle('Your Password', 17, Colors.grey, FontWeight.normal),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(

                    borderRadius: BorderRadius.circular(15),
                  ),
                  prefixIcon: const Icon(Icons.key, color: Colors.grey,),
                  hintText: 'Enter your passowrd',

                  hintStyle: const TextStyle(
                    color: Colors.grey,
                  ),
                  enabledBorder:  OutlineInputBorder(
                    borderSide:  const BorderSide(color: Colors.grey, width: 1.5),
                    borderRadius: BorderRadius.circular(25),
                  ),

                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(padding: const EdgeInsets.only(left: 16, right: 16),
                child:  InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=> const Stepper2()));
                  },
                  child: customButton(60, double.infinity, btnColor, 28, myStyle('Continue', 17, Colors.white, FontWeight.w600)),
                )
            ),

          ],
        ),
      ),
    );
  }
}
