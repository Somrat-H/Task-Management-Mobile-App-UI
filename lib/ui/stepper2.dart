import 'package:flutter/material.dart';
import 'package:somrat/%20widget/custom_button.dart';
import 'package:somrat/%20widget/custom_color.dart';
import 'package:somrat/%20widget/my_style.dart';
import 'package:somrat/ui/login.dart';
import 'package:somrat/ui/on_boarding3.dart';
import 'package:somrat/ui/steeper3.dart';
class Stepper2 extends StatelessWidget {
  const Stepper2({Key? key}) : super(key: key);

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
                      child: Image.asset('assets/steepper2.png'),
                    ),

                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 17,
            ),
            Padding(padding: const EdgeInsets.only(
              left: 16,
              right: 16,
            ),
              child: InkWell(
                autofocus: false,
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=> const Steeper3()));
                },
                child:  customButton(60, double.infinity, btnColor, 28, myStyle('Create Your Own Team', 16, Colors.white, FontWeight.w700)),
              ),
            ),
            const SizedBox(height: 25,),

            myStyle('Or', 18, Colors.white, FontWeight.w700),
            const SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: InkWell(
                autofocus: false,
                onTap: (){

                  Navigator.push(context, MaterialPageRoute(builder: (_)=> const LogIn()));
                },
                child: Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    border: Border.all(color: Colors.white),

                  ),
                  child: Center(child: myStyle('Join Team', 17, Colors.white, FontWeight.w600),),),
              ),
            ),


          ],
        ),
      ),
    );
  }
}


