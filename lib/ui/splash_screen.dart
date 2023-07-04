import 'package:flutter/material.dart';
import 'package:somrat/%20widget/my_style.dart';
import 'package:somrat/%20widget/custom_button.dart';
import 'package:somrat/ui/on_boarding1.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff191A22),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 240),
              child: Container(
                height: 60,
                width: 60,
                color: const Color(0xff292B3E),
                child: const Icon(
                  Icons.vaccines_rounded,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: myStyle(
                  'RANCHING', 36, const Color(0xffE4E4E6), FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: myStyle('Your Personal Task Manager', 17,
                  const Color(0xffE9E9EB), FontWeight.normal),
            ),
            // Divider(
            //   height: MediaQuery.of(context).size.height * .38,
            // ),
            SizedBox(
              
              height: MediaQuery.of(context).size.height * .38,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: InkWell(
                autofocus: false,
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>OnBoarding1()));

                },
                child: customButton(60, double.infinity, Colors.blue, 28,
                  myStyle('Get Started', 17, Colors.white, FontWeight.w600)),
              )
            )
          ],
        ));
  }
}
