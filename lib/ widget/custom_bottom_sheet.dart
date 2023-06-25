import 'package:flutter/material.dart';
import 'package:somrat/%20widget/custom_button.dart';
import 'package:somrat/%20widget/myStyle.dart';

myBottomSheet(BuildContext context) {
  return showModalBottomSheet<dynamic>(
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
                      icon: Icon(Icons.cancel_outlined),
                      color: Color(0xff8A8A8E),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                        color: Color(0xff8E8E93),
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: myStyle('Add New Member', 16, Color(0xffF8F8F8),
                        FontWeight.w700),
                  ),
                  myStyle(
                      "Make your team good with us. invite your team members. to get goingMake your team good with us. invite your team\nmembers. to get going",
                      12,
                      Color(0xffE9E9EB),
                      FontWeight.w400),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: myStyle(
                        "Team Members", 16, Color(0xffF8F8F8), FontWeight.w400),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Select Your Team',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                        25,
                      )),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Icon(Icons.add),
                      SizedBox(
                        width: 60,
                      ),
                      myStyle('Add Members', 16, Colors.white, FontWeight.w600),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  customButton(60, double.infinity, Colors.blue, 25,
                      myStyle('Invite', 16, Colors.white, FontWeight.w700)),
                ],
              ),
            ),
          ],
        );
      });
}
