


import 'package:flutter/material.dart';

import 'custom_color.dart';
import 'myStyle.dart';

customTile(BuildContext context){
  return  Container(
    height: 130,
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: ctnColor,
    ),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Icon(Icons.check_box_outlined, color: Colors.white,),
                    ),
                    SizedBox(width: 10,),
                    myStyle('Research Analysis', 16, Colors.white, FontWeight.w400),
                  ]
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Container(
                    height: 30,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Color(0xffFEEBF5) ,
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Center(
                      child: myStyle('Urgent', 15, Colors.pink, FontWeight.w400),
                    )
                ),
              )


            ],
          ),
        ) ,
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
              trackHeight: 10,
              thumbColor: Colors.transparent,
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 0.0)),

          child: Slider(
              max: 100,
              min: 0,
              activeColor: Colors.deepPurpleAccent,
              inactiveColor: Color(0xff363748),
              value: 25, onChanged: (v){

          }),
        ) ,
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Row(
            children: [
              Container(height: 10, width: 10,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xff76BBAA),
                ),
              ) ,
              SizedBox(width: 10,),
              myStyle('2 Days Left', 14, Colors.white, FontWeight.w400),
            ],
          ),
        )
      ],
    ),
  );
}