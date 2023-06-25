import 'package:flutter/material.dart';
import 'package:somrat/%20widget/my_style.dart';

customAppBar(String title, ){
  return  SizedBox(
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
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey
                ),
              ),
              const SizedBox(width: 10,),
              myStyle(title, 16, Colors.white, FontWeight.w700),
              const SizedBox(width: 10,),
              const Icon(Icons.arrow_drop_down_sharp, color: Colors.white,),

            ],
          ),
          const Padding(
            padding: EdgeInsets.only(
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