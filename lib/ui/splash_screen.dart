import 'package:flutter/material.dart';
import 'package:somrat/%20widget/myStyle.dart';
import 'package:somrat/ui/on_boarding1.dart';
import 'package:somrat/ui/on_boarding2.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff191A22),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 240),
            child: Container(
              height: 60,
              width: 60,
              color: Color(0xff292B3E),
              child: Icon(Icons.vaccines_rounded, color: Colors.white,),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 32),
          child: myStyle('RANCANG', 36, Color(0xffE4E4E6), FontWeight.bold),

          ),
          Padding(padding: EdgeInsets.only(left: 8),
            child: myStyle('Your Personal Task Manager', 17, Color(0xffE9E9EB), FontWeight.normal),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 270, left: 16, right: 16),
            child: InkWell(
              onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=> OnBoarding1()));
                      },
              child: Container(
                height: 56,
                  width: double.infinity,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(28),
                   color: Color(0xff246BFD),
                 ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          myStyle("Getting Started", 17, Colors.white, FontWeight.w600),
                          Icon(Icons.arrow_forward_ios, color: Colors.white,size: 15,),
                        ],
                  ),
                ),
              ),
            ),
          )

        ],
      )

    );
  }
}
