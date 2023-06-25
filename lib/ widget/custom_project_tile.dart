import 'package:flutter/material.dart';
import 'package:somrat/%20widget/myStyle.dart';
myCustomProjectTile(BuildContext context){
  return Container(
    height: 150,
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: Color(0xff292B3E),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              myStyle('Web Design', 16, Colors.white, FontWeight.w400),
              Row(
                children: [
                  Container(
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff76BBAA),
                    ),
                  ),
                  SizedBox(width: 8,),
                  myStyle('2 Days Left', 12, Colors.white, FontWeight.w400),
                  SizedBox(width: 5,),
                  Icon(Icons.more_vert, color: Colors.white,)
                ],
              ),
            ],
          ),
          SizedBox(height: 10,),
          myStyle('PT. Ikatan Cinta', 12, Color(0xffE9E9EB
          ), FontWeight.w400),
          Align(
            alignment: Alignment.topLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * .75,
                  child: SliderTheme(

                    data: SliderTheme.of(context).copyWith(
                        trackHeight: 10,
                        thumbColor: Colors.transparent,
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 0.0)),

                    child: Slider(

                        max: 100,
                        min: 0,
                        activeColor: Colors.deepPurpleAccent,
                        inactiveColor: Color(0xff363748),
                        value: 35, onChanged: (v){

                    }),
                  ),
                ),
                myStyle('35%', 12, Colors.white, FontWeight.w400),
              ],
            ),
          ) ,
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff76BBAA),
                    ),
                  ),
                  SizedBox(width: 10,),
                  myStyle('12 Tasks', 12, Colors.white, FontWeight.w400),

                ],

              ),
              Row(
                children: [
                  Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffE5E5EA)
                    ),
                  ),
                  SizedBox(width: 4,),
                  Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffE5E5EA)
                    ),
                  ),
                  SizedBox(width: 4,),
                  Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffE5E5EA)
                    ),
                  ),
                  SizedBox(width: 4,),
                  Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffE5E5EA)
                    ),
                  )
                ],
              ),
            ],
          )

        ],
      ),
    ),
  );
}


