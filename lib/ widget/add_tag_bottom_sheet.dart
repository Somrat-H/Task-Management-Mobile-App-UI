import 'package:flutter/material.dart';
import 'package:somrat/%20widget/custom_button.dart';
import 'package:somrat/%20widget/my_style.dart';

myAddTagBottomSheet(BuildContext context) {
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      myStyle('Add Tags', 16, const Color(0xffF8F8F8), FontWeight.w700),
                      IconButton(onPressed: (){
                        Navigator.pop(context);
                      }, icon: const Icon(Icons.cancel_outlined)),
                    ],
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
