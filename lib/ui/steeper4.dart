import 'package:flutter/material.dart';
import 'package:somrat/%20widget/custom_button.dart';
import 'package:somrat/%20widget/custom_color.dart';
import 'package:somrat/%20widget/custom_steeper_bar.dart';
import 'package:somrat/%20widget/myStyle.dart';
import 'package:somrat/ui/stepper5.dart';
class Stepper4 extends StatelessWidget {
  const Stepper4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Column(
          children: [
              customStepperAppBar('assets/steeper4.png', (){
                        Navigator.pop(context);
              }),
              myStyle('Enter Your Code Team', 16, Colors.white, FontWeight.w700),
            const SizedBox(height: 16,),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Align(
                alignment: Alignment.topLeft,
                child: myStyle('Code Team', 16, Colors.grey, FontWeight.w400),
              ),
            ),
            const SizedBox(height: 16,),
            Padding(padding: const EdgeInsets.only(left: 16, right: 16),
              child:TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(

                    borderRadius: BorderRadius.circular(15),
                  ),
                  prefixIcon: const Icon(Icons.person_4_rounded, color: Colors.grey,),
                  hintText: 'e.g JXHJKH',

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
            const SizedBox(height: 50,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=> const Stepper5()));
              },
              child: customButton(58, double.infinity, btnColor, 28, myStyle('Continue', 17, Colors.white, FontWeight.w600)),
            )

          ],
        ),
      ),
    );
  }
}
