import 'package:flutter/material.dart';

customStepperAppBar(String img, Function voidcallback){
  return Container(
    height: 65,
    width: double.infinity,
    child: Padding(
      padding: const EdgeInsets.all(22.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(onPressed: (){
            voidcallback();
          }, icon: Icon(Icons.arrow_back_ios, color: Colors.white,)),
          SizedBox(width: 70,),
          Padding(
            padding: const EdgeInsets.only(top: 14),
            child: Image.asset(img),
          ),
        ],
      ),
    ),
  );
}