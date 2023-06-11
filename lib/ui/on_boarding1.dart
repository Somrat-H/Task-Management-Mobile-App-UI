import 'package:flutter/material.dart';

import 'package:somrat/ widget/custom_button.dart';
import 'package:somrat/ widget/myStyle.dart';
import 'package:somrat/ui/login.dart';
import 'package:somrat/ui/on_boarding2.dart';
class OnBoarding1 extends StatelessWidget {
  OnBoarding1({Key? key}) : super(key: key);
  List<String> data = ['Update Progress\nYour Work for The\nTeam', 'Create a Task and\nAssign it to Your\nTeam Members', 'Get Notified when\nyou Get a New\nAssignment'];
  List<String> img = ['assets/Slider_1.png', 'assets/Slider_2.png', 'assets/Slider_3.png' ];
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


            // SizedBox(height: 30,),

            // Container(
            //   height: 200,
            //   width: double.infinity,
            //   color: Colors.red,
            //   child: ListView.builder(
            //      shrinkWrap: true,
            //       scrollDirection: Axis.horizontal,
            //       itemCount: 3,
            //       itemBuilder: (_, index){
            //     return Container(
            //       width: 380,
            //       child: Column(
            //         children: [
            //           Text('lkdfjakldsjf'),
            //           Text('adkfjadjkf'),
            //         ],
            //       ),
            //     );
            //   }),
            // ),
            Container(

              height: 200,
              width: double.infinity,
              child: ListView.builder(
                shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: img.length,
                  itemBuilder: (_, index){
                return SizedBox(
                  height: 200,
                  width: 350,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Padding(padding: EdgeInsets.only(left: 16, right: 16),
                      child:  myStyle(data[index], 36, Colors.white, FontWeight.w700),
                    ),
                    Padding(padding:  EdgeInsets.only(left: 16, right: 16, top: 32),
                      child:  Container(
                        height: 8,
                        width: 48,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(img[index]),
                              // fit: BoxFit.fill,
                            )
                        ),
                      ),
                    ),
                  ],),
                );
              }),
            ),

            Padding(padding: EdgeInsets.only(top: 36, left: 16, right: 16),
              child: customButton(60, double.infinity, Color(0xff246BFD), 28, myStyle('Sign Up', 17, Colors.white, FontWeight.w600)),
            ),
            SizedBox(height: 10,),
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
