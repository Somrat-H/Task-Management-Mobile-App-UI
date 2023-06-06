import 'package:flutter/material.dart';
import 'package:somrat/%20widget/myStyle.dart';

customAppBar(String title, ){
  return  Container(
    height: 60,
    width: double.infinity,
    child: Padding(
      padding: const EdgeInsets.only(left: 18, right: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 33,
                width: 33,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey
                ),
              ),
              SizedBox(width: 10,),
              myStyle(title, 16, Colors.white, FontWeight.w700),
              SizedBox(width: 10,),
              Icon(Icons.arrow_drop_down_sharp, color: Colors.white,),

            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
              bottom: 18,

            ),
            child: Icon(Icons.search, color: Colors.white,),
          ),
        ],
      ),
    ),
  );
}