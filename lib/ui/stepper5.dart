
import 'package:flutter/material.dart';
import 'package:somrat/%20widget/custom_button.dart';
import 'package:somrat/%20widget/custom_color.dart';
import 'package:somrat/%20widget/custom_steeper_bar.dart';
import 'package:somrat/%20widget/myStyle.dart';
class Stepper5 extends StatelessWidget {
  const Stepper5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Column(
          children: [
            customStepperAppBar('assets/steepper5.png', (){

            }),
            myStyle('Invite Your Team Member', 16, Colors.white, FontWeight.w700),
            SizedBox(height: 16,),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Align(
                alignment: Alignment.topLeft,
                child: myStyle('Email Member', 16, Colors.grey, FontWeight.w400),
              ),
            ),
            SizedBox(height: 16,),
            Padding(padding: EdgeInsets.only(left: 16, right: 16),
              child:TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(

                    borderRadius: BorderRadius.circular(15),
                  ),
                  prefixIcon: Icon(Icons.mail, color: Colors.grey,),
                  hintText: 'Type an email addrress',

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
            SizedBox(height: 50,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=> Stepper5()));
              },
              child: customButton(58, double.infinity, btnColor, 28, myStyle('Continue', 17, Colors.white, FontWeight.w600)),
            )

          ],
        ),
      ),
    );
  }
}
