import 'package:flutter/material.dart';
import 'package:somrat/%20widget/custom_button.dart';
import 'package:somrat/%20widget/custom_color_container.dart';
import 'package:somrat/%20widget/myStyle.dart';
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
                children: [
                  myStyle('Add Tags', 16, Colors.white, FontWeight.w700),
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: Icon(Icons.cancel_outlined), color: Color(0xff8A8A8E),),
                ],
              ),
              SizedBox(height: 15,),
             
              Align(
                alignment: Alignment.topLeft,
                child:    myStyle("Tag Name", 16, Color(0xffF8F8F8), FontWeight.w400),
              ),
              SizedBox(height: 8,),
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
              SizedBox(height: 20,),
              Align(
                alignment: Alignment.topLeft,
                child:    myStyle("Color", 16, Color(0xffF8F8F8), FontWeight.w400),
              ),
              GridView.builder(
                itemCount: myContainer.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                    crossAxisCount: 5, ),
                  itemBuilder: (_, index){
                    return Container(
                        height: 30,
                        width: 30,
                        child: myContainer[index]);
                  }),
              SizedBox(
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
