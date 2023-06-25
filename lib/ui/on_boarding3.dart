import 'package:flutter/material.dart';
import 'package:somrat/ widget/custom_button.dart';
import 'package:somrat/%20widget/my_style.dart';
import 'package:somrat/ui/login.dart';
import 'package:somrat/ui/signup.dart';
class OnBoarding3 extends StatelessWidget {
  const OnBoarding3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor:const Color(0xff191A22),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                const SizedBox(
                  height: 380,
                  width: double.infinity,
                ),
                Positioned(
                  bottom: 150,
                  child: Transform.rotate(
                    angle: 3.1415 / 6,
                    child: Padding(
                        padding: const EdgeInsets.only(bottom: 25, top: 10),
                        child: Container(
                          height: 350,
                          width: 400,
                          decoration: BoxDecoration(
                              color: const Color(0xff8E8E93),
                              borderRadius: BorderRadius.circular(40)
                          ),
                        )
                    ),),
                ),
              ],
            ),

            // const SizedBox(height: 30,),


              Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                myStyle('Update Progress\nYour Work for The\nTeam', 36, Colors.white, FontWeight.w700),
                Container(
                  height: 8,
                  width: 48,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/Slider_1.png'),
                        // fit: BoxFit.fill,
                      )
                  ),
                ),
              ],),
            ),
            const SizedBox(height: 10,),
            
             
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=> const Signup()));
              },
              child: Padding(padding: const EdgeInsets.only(left: 16, right: 16),
                child:  customButton(60, double.infinity, const Color(0xff246BFD), 28, myStyle('SignUp', 17, Colors.white, FontWeight.w600)),
              )
            ),
            const SizedBox(height: 10,),
            // InkWell(
            //   onTap: (){
            //     Navigator.push(context, MaterialPageRoute(builder: (_)=> Signup()));
            //   },
            //   child: Padding(padding: EdgeInsets.only(left: 16, right: 16),
            //     child:  customButton(60, double.infinity, Colors.transparent, 28, myStyle('Login', 17, Colors.white, FontWeight.w600)),
            //   )
            // ),


            // Padding(padding: EdgeInsets.only(left: 16, right: 16),
            //   child:  myStyle(, 36, Colors.white, FontWeight.w700),
            // ),
            // Padding(padding:  const EdgeInsets.only(left: 16, right: 16, top: 32),
            //   child:  Container(
            //     height: 8,
            //     width: 48,
            //     decoration: const BoxDecoration(
            //         image: DecorationImage(
            //           image: AssetImage('assets/Slider_3.png',),
            //           // fit: BoxFit.fill,
            //         )
            //     ),
            //   ),
            // ),

            // Padding(padding: const EdgeInsets.only(top: 36, left: 16, right: 16),
            //   child: customButton(60, double.infinity, const Color(0xff246BFD), 28, myStyle('Sign Up', 17, Colors.white, FontWeight.w600)),
            // ),
            // const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: InkWell(
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
                  child: Center(child: myStyle('Login', 17, Colors.white, FontWeight.w600),),),
              ),
            ),

          ],
        )

    );
  }
}
