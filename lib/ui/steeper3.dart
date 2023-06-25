import 'package:flutter/material.dart';
import 'package:somrat/ widget/custom_button.dart';
import 'package:somrat/ widget/custom_color.dart';
import 'package:somrat/%20widget/my_style.dart';
import 'package:somrat/ui/steeper4.dart';
class Steeper3 extends StatelessWidget {
  const Steeper3({Key? key}) : super(key: key);

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
                      // Navigator.push(context, MaterialPageRoute(builder: (_)=> ));
                    }, icon: const Icon(Icons.arrow_back_ios, color: Colors.white,)),
                    const SizedBox(width: 70,),
                    Padding(
                      padding: const EdgeInsets.only(top: 14),
                      child: Image.asset('assets/steepper3.png'),
                    ),

                  ],
                ),
              ),
            ),
            const SizedBox(height: 25,),
            myStyle('Create Your Own Team?', 17, Colors.white, FontWeight.w700),
            const SizedBox(height: 16,),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Align(
                alignment: Alignment.topLeft,
                child: myStyle('Your Team Name', 16, Colors.grey, FontWeight.w400),
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
                  hintText: 'e.g Parto Team',

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
            const SizedBox(height: 30,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=> const Stepper4()));
              },
              child: Padding(padding: const EdgeInsets.only(left: 16, right: 16),
                child: customButton(58, double.infinity, btnColor, 28, myStyle('Continue', 17, Colors.white, FontWeight.w600)),
              ),
            )




          ],
        ),
      ),
    );
  }
}
