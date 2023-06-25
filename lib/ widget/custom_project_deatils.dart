import 'package:flutter/material.dart';
import 'package:somrat/%20widget/custom_project_bottom_sheet.dart';
import 'package:somrat/%20widget/myStyle.dart';
class ProjectDetails extends StatelessWidget {
  const ProjectDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff191A22),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: (){
            myCustomProjectBottomSheet(context);
        },
        child: Icon(Icons.add, color: Colors.white,),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff191A22),
        title: myStyle('Project Details', 16, Colors.white, FontWeight.w700),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.white,),

        ),
        actions: [
          Icon(Icons.more_vert, color: Colors.white,),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
             Container(
               height: 270,
               width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff292B3E),
                borderRadius: BorderRadius.circular(8)
              ),
               child: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     myStyle("Web Design - PT Mencari\nCinta Sejati ", 24, Color(0xffF8F8F8), FontWeight.w700),
                     SizedBox(height: 8,),
                     Row(
                       children: [
                         Container(
                           height: 8,
                           width: 8,
                           decoration: BoxDecoration(
                             shape: BoxShape.circle,
                             color: Color(0xffDDEEEA)
                           ),
                         ),
                         myStyle('12 Tasks', 12, Color(0xffE9E9EB), FontWeight.w400),
                 ]
             ),

                     SizedBox(height: 8,),
                     myStyle('Goals', 16, Color(0xffE9E9EB), FontWeight.w400),
                     SizedBox(height: 8,),
                     myStyle('Lorem ipsum dolor sit amet, consectetur\nadipis cing elit. Sit tristique porttitor\nmagna turpis consequat, sed. At urna, cras\nultricies tristique.', 16, Color(0xffE9E9EB), FontWeight.w400),
                     SizedBox(height: 20,),

                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Row(
                           children: [
                             Icon(Icons.calendar_today_outlined, color: Colors.white,),
                             myStyle('March 13, 17:00 PM', 12, Color(0xffE9E9EB), FontWeight.w400),
                           ],
                         ),
                         Row(
                           children: [
                             Icon(Icons.cases_rounded, color: Colors.white,),
                             myStyle('Medium Project', 12, Color(0xffE9E9EB), FontWeight.w400),
                           ],
                         ),

                       ],
                     )

                   ],
                 ),
               )

               ),
            SizedBox(height: 12,),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xff292B3E),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                                myStyle('Tasks (5/12)', 16, Colors.white70, FontWeight.w700),
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
                                    value: 30, onChanged: (v){

                                }),
                              ),
                            ],
                          ),
                      Row(
                        children: [
                         Icon(Icons.check_box_outlined),
                          SizedBox(width: 10,),
                          myStyle('Research Analysis', 16, Color(0xffE9E9EB), FontWeight.w400),

                        ],
                      ),
                      SizedBox(height: 25,),
                      Row(
                        children: [
                          Icon(Icons.check_box_outlined),
                          SizedBox(width: 10,),
                          myStyle('Design Systems', 16, Color(0xffE9E9EB), FontWeight.w400),

                        ],
                      ),
                      SizedBox(height: 25,),
                      Row(
                        children: [
                          Icon(Icons.check_box_outlined),
                          SizedBox(width: 10,),
                          myStyle('Wireframe', 16, Color(0xffE9E9EB), FontWeight.w400),

                        ],
                      ),
                      SizedBox(height: 25,),
                      Row(
                        children: [
                          Icon(Icons.check_box_outlined),
                          SizedBox(width: 10,),
                          myStyle('Mockup', 16, Color(0xffE9E9EB), FontWeight.w400),

                        ],
                      ),
                      SizedBox(height: 25,),
                      Row(
                        children: [
                          Icon(Icons.check_box_outlined),
                          SizedBox(width: 10,),
                          myStyle('Prototype', 16, Color(0xffE9E9EB), FontWeight.w400),

                        ],
                      ),
                      SizedBox(height: 25,),
                      Row(
                        children: [
                          Icon(Icons.check_box_outlined),
                          SizedBox(width: 10,),
                          myStyle('Research Analysis', 16, Color(0xffE9E9EB), FontWeight.w400),

                        ],
                      ),
                      SizedBox(height: 25,),
                      Row(
                        children: [
                          Icon(Icons.check_box_outlined),
                          SizedBox(width: 10,),
                          myStyle('Research Analysis', 16, Color(0xffE9E9EB), FontWeight.w400),

                        ],
                      ),
                      SizedBox(height: 25,),
                      Row(
                        children: [
                          Icon(Icons.check_box_outlined),
                          SizedBox(width: 10,),
                          myStyle('Research Analysis', 16, Color(0xffE9E9EB), FontWeight.w400),

                        ],
                      ),
                      SizedBox(height: 25,),
                      Row(
                        children: [
                          Icon(Icons.check_box_outlined),
                          SizedBox(width: 10,),
                          myStyle('Research Analysis', 16, Color(0xffE9E9EB), FontWeight.w400),

                        ],
                      ),
                      SizedBox(height: 25,),
                      Row(
                        children: [
                          Icon(Icons.check_box_outlined),
                          SizedBox(width: 10,),
                          myStyle('Research Analysis', 16, Color(0xffE9E9EB), FontWeight.w400),

                        ],
                      ),
                      SizedBox(height: 25,),
                      Row(
                        children: [
                          Icon(Icons.check_box_outlined),
                          SizedBox(width: 10,),
                          myStyle('Research Analysis', 16, Color(0xffE9E9EB), FontWeight.w400),

                        ],
                      ),
                      SizedBox(height: 25,),
                      Row(
                        children: [
                          Icon(Icons.check_box_outlined),
                          SizedBox(width: 10,),
                          myStyle('Research Analysis', 16, Color(0xffE9E9EB), FontWeight.w400),

                        ],
                      ),
                      SizedBox(height: 25,),
                      Row(
                        children: [
                          Icon(Icons.check_box_outlined),
                          SizedBox(width: 10,),
                          myStyle('Research Analysis', 16, Color(0xffE9E9EB), FontWeight.w400),

                        ],
                      ),
                      
                    ],
                  ),
                ),
              ),
            ))

          ],
        ),
      ),
    );
  }
}
