import 'package:flutter/material.dart';
import 'package:somrat/%20widget/custom_button.dart';
import 'package:somrat/%20widget/myStyle.dart';
import 'package:somrat/ui/login.dart';
import 'package:somrat/ui/on_boarding3.dart';
class OnBoarding2 extends StatelessWidget {
  const OnBoarding2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor:const Color(0xff191A22),

        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Stack(
              children: [
                SizedBox(
                  height: 400,
                  width: double.infinity,
                ),
                Positioned(
                  bottom: 120,
                  child: Transform.rotate(
                    angle: 3.1415 / 6,
                    child: Padding(
                        padding: const EdgeInsets.only(bottom: 25, top: 10),
                        child: Container(
                          height: 350,
                          width: 400,

                          decoration: BoxDecoration(
                              color: Color(0xff8E8E93),
                              borderRadius: BorderRadius.circular(40)
                          ),
                        )
                    ),),
                ),
              ],
            ),



            SizedBox(height: 30,),




            Padding(padding: EdgeInsets.only(left: 16, right: 16),
              child:  myStyle('Create a Task and\nAssign it to Your\nTeam Members', 36, Colors.white, FontWeight.w700),
            ),
            Padding(padding:  EdgeInsets.only(left: 16, right: 16, top: 32),
              child:  InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=> OnBoarding3()));
                },
                child: Container(
                  height: 8,
                  width: 48,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/Slider_2.png',),
                        // fit: BoxFit.fill,
                      )
                  ),
                ),
              ),
            ),

            Padding(padding: EdgeInsets.only(top: 36, left: 16, right: 16),
              child: customButton(60, double.infinity, Color(0xff246BFD), 28, myStyle('Sign Up', 17, Colors.white, FontWeight.w600)),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=> LogIn()));
                },
                child: Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    border: Border.all(color: Colors.white),

                  ),
                  child: Center(child: myStyle('Login', 17, Colors.white, FontWeight.w600),),),
              ),
            ),

          ],
        )

    );
  }
}
