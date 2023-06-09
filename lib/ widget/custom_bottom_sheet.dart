import 'package:flutter/material.dart';
import 'package:somrat/%20widget/custom_button.dart';
import 'package:somrat/%20widget/my_style.dart';
import 'package:somrat/ui/navBar/navbar.dart';

myBottomSheet(BuildContext context) {
  return showModalBottomSheet<dynamic>(
    backgroundColor: const Color(0xff292B3E),
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Wrap(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.cancel_outlined),
                      color: const Color(0xff8A8A8E),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                        color: const Color(0xff8E8E93),
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: myStyle('Add New Member', 16, const Color(0xffF8F8F8),
                        FontWeight.w700),
                  ),
                  myStyle(
                      "Make your team good with us. invite your team members. to get goingMake your team good with us. invite your team\nmembers. to get going",
                      12,
                      const Color(0xffE9E9EB),
                      FontWeight.w400),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: myStyle(
                        "Team Members", 16, const Color(0xffF8F8F8), FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Select Your Team',
                      hintStyle: const TextStyle(
                        color: Colors.white,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(
                        25,
                      )),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const Icon(Icons.add, color: Colors.white,),
                      const SizedBox(
                        width: 60,
                      ),
                      myStyle('Add Members', 16, Colors.white, FontWeight.w600),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=> const NavBar()));
                    },
                    child: customButton(60, double.infinity, Colors.blue, 25,
                      myStyle('Invite', 16, Colors.white, FontWeight.w700)),
                  )
                ],
              ),
            ),
          ],
        );
      });
}
