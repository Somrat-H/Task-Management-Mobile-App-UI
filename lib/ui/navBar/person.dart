import 'package:flutter/material.dart';
import 'package:somrat/%20widget/myStyle.dart';
class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       backgroundColor: Color(0xff191A22),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  myStyle("My Profile", 16, Color(0xffF8F8F8), FontWeight.w700),
                  myStyle('Sign Out', 16, Colors.red, FontWeight.w700),
                ],
              ),
              SizedBox(height: 20,),
              Row(

                children: [
                  CircleAvatar(
                    minRadius: 30,
                    backgroundColor: Colors.grey,
                  ),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      myStyle('Shoo Phar Nha', 20, Color(0xffF8F8F8), FontWeight.w700),
                      SizedBox(height: 5,),
                      myStyle('xDesign Team', 16, Color(0xffE9E9EB), FontWeight.w400),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: MediaQuery.of(context).size.height * .35,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff292B3E),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    myStyle('Account', 16, Color(0xffF8F8F8), FontWeight.w400),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        myStyle('My Information', 16, Colors.white, FontWeight.w400),
                        Icon(Icons.arrow_forward_ios_outlined, size: 16,),
                      ],
                    ),
                    SizedBox(height: 20,),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        myStyle('Chnage Password', 16, Colors.white, FontWeight.w400),
                        Icon(Icons.arrow_forward_ios_outlined, size: 16,),
                      ],
                    ),
                    SizedBox(height: 20,),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        myStyle('My Team', 16, Colors.white, FontWeight.w400),
                        Icon(Icons.arrow_forward_ios_outlined, size: 16,),
                      ],
                    ),
                    SizedBox(height: 20,),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        myStyle('Notification', 16, Colors.white, FontWeight.w400),
                        Icon(Icons.arrow_forward_ios_outlined, size: 16,),
                      ],
                    )
                  ]),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                  color: Color(0xff292B3E),
                  borderRadius: BorderRadius.circular(8),
                  
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       myStyle('Help', 16, Color(0xffF8F8F8), FontWeight.w400),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          myStyle('Licenses', 16, Colors.white, FontWeight.w400),
                          Icon(Icons.arrow_forward_ios_outlined, size: 16,),
                        ],
                      ),
                      SizedBox(height: 20,),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          myStyle('Privacy Policy', 16, Colors.white, FontWeight.w400),
                          Icon(Icons.arrow_forward_ios_outlined, size: 16,),
                        ],
                      ),
                    ],
                  ),
                ),
                ) 
              )
            ],
          ),
        )
        
      ),
    );
  }
}
