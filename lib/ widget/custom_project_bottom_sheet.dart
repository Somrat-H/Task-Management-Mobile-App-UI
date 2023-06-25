import 'package:flutter/material.dart';
import 'package:somrat/%20widget/custom_button.dart';
import 'package:somrat/%20widget/custom_color_container.dart';
import 'package:somrat/%20widget/my_style.dart';
myCustomProjectBottomSheet(BuildContext context){
  return showModalBottomSheet<dynamic> (
      isScrollControlled: true,
      context: context, builder: (context){
    return Wrap(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  myStyle('Add Tags', 16, Colors.white, FontWeight.w700),
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: const Icon(Icons.cancel_outlined), color: const Color(0xff8A8A8E),),
                ],
              ),
              const SizedBox(height: 15,),
             
              Align(
                alignment: Alignment.topLeft,
                child:    myStyle("Tag Name", 16, const Color(0xffF8F8F8), FontWeight.w400),
              ),
              const SizedBox(height: 8,),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Select Your Team',

                  border: OutlineInputBorder(

                      borderRadius: BorderRadius.circular(
                        25,
                      )
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              Align(
                alignment: Alignment.topLeft,
                child:    myStyle("Color", 16, const Color(0xffF8F8F8), FontWeight.w400),
              ),
              GridView.builder(
                shrinkWrap: true,
                itemCount: myContainer.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 7,
                    crossAxisSpacing: 7,
                    crossAxisCount: 5, ),
                  itemBuilder: (_, index){
                    return  Expanded(child: myContainer[index]);
                  }),
              const SizedBox(
                height: 25,
              ),
              customButton(60, double.infinity, Colors.blue, 25, myStyle('Invite',16, Colors.white, FontWeight.w700)),
            ],
          ),
        ),
      ],
    );
  });
}
