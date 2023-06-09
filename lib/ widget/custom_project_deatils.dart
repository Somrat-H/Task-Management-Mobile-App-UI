import 'package:flutter/material.dart';
import 'package:somrat/%20widget/custom_project_bottom_sheet.dart';
import 'package:somrat/%20widget/my_style.dart';
class ProjectDetails extends StatelessWidget {
  const ProjectDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff191A22),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: (){
            myCustomProjectBottomSheet(context);
        },
        child: const Icon(Icons.add, color: Colors.white,),
      ),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: const Color(0xff191A22),
        title: myStyle('Project Details', 16, Colors.white, FontWeight.w700),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white,),

        ),
        actions: const[
         Icon(Icons.more_vert, color: Colors.white,),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
             Container(
               height: MediaQuery.of(context).size.height * .42,
               width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xff292B3E),
                borderRadius: BorderRadius.circular(8)
              ),
               child: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     myStyle("Web Design - PT Mencari\nCinta Sejati ", 24, const Color(0xffF8F8F8), FontWeight.w700),
                     const SizedBox(height: 8,),
                     Row(
                       children: [
                         Container(
                           height: 8,
                           width: 8,
                           decoration: const BoxDecoration(
                             shape: BoxShape.circle,
                             color: Color(0xffDDEEEA)
                           ),
                         ),
                         myStyle('12 Tasks', 12, const Color(0xffE9E9EB), FontWeight.w400),
                 ]
             ),

                     const SizedBox(height: 8,),
                     myStyle('Goals', 16, const Color(0xffE9E9EB), FontWeight.w400),
                     const SizedBox(height: 8,),
                     myStyle('Lorem ipsum dolor sit amet, consectetur\nadipis cing elit. Sit tristique porttitor\nmagna turpis consequat, sed. At urna, cras\nultricies tristique.', 16, const Color(0xffE9E9EB), FontWeight.w400),
                     const SizedBox(height: 20,),

                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Row(
                           children: [
                             const Icon(Icons.calendar_today_outlined, color: Colors.white,),
                             myStyle('March 13, 17:00 PM', 12, const Color(0xffE9E9EB), FontWeight.w400),
                           ],
                         ),
                         Row(
                           children: [
                             const Icon(Icons.cases_rounded, color: Colors.white,),
                             myStyle('Medium Project', 12, const Color(0xffE9E9EB), FontWeight.w400),
                           ],
                         ),

                       ],
                     )

                   ],
                 ),
               )

               ),
            const SizedBox(height: 12,),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color(0xff292B3E),
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
                                    thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 0.0)),

                                child: Slider(

                                    max: 100,
                                    min: 0,
                                    activeColor: Colors.deepPurpleAccent,
                                    inactiveColor: const Color(0xff363748),
                                    value: 30, onChanged: (v){

                                }),
                              ),
                            ],
                          ),
                      Row(
                        children: [
                         const Icon(Icons.check_box_outlined),
                          const SizedBox(width: 10,),
                          myStyle('Research Analysis', 16, const Color(0xffE9E9EB), FontWeight.w400),

                        ],
                      ),
                      const SizedBox(height: 25,),
                      Row(
                        children: [
                          const Icon(Icons.check_box_outlined),
                          const SizedBox(width: 10,),
                          myStyle('Design Systems', 16, const Color(0xffE9E9EB), FontWeight.w400),

                        ],
                      ),
                      const SizedBox(height: 25,),
                      Row(
                        children: [
                          const Icon(Icons.check_box_outlined),
                          const SizedBox(width: 10,),
                          myStyle('Wireframe', 16, const Color(0xffE9E9EB), FontWeight.w400),

                        ],
                      ),
                      const SizedBox(height: 25,),
                      Row(
                        children: [
                          const Icon(Icons.check_box_outlined),
                          const SizedBox(width: 10,),
                          myStyle('Mockup', 16, const Color(0xffE9E9EB), FontWeight.w400),

                        ],
                      ),
                      const SizedBox(height: 25,),
                      Row(
                        children: [
                          const Icon(Icons.check_box_outlined),
                          const SizedBox(width: 10,),
                          myStyle('Prototype', 16, const Color(0xffE9E9EB), FontWeight.w400),

                        ],
                      ),
                      const SizedBox(height: 25,),
                      Row(
                        children: [
                          const Icon(Icons.check_box_outlined),
                          const SizedBox(width: 10,),
                          myStyle('Research Analysis', 16, const Color(0xffE9E9EB), FontWeight.w400),

                        ],
                      ),
                      const SizedBox(height: 25,),
                      Row(
                        children: [
                          const Icon(Icons.check_box_outlined),
                          const SizedBox(width: 10,),
                          myStyle('Research Analysis', 16, const Color(0xffE9E9EB), FontWeight.w400),

                        ],
                      ),
                      const SizedBox(height: 25,),
                      Row(
                        children: [
                          const Icon(Icons.check_box_outlined),
                          const SizedBox(width: 10,),
                          myStyle('Research Analysis', 16, const Color(0xffE9E9EB), FontWeight.w400),

                        ],
                      ),
                      const SizedBox(height: 25,),
                      Row(
                        children: [
                          const Icon(Icons.check_box_outlined),
                          const SizedBox(width: 10,),
                          myStyle('Research Analysis', 16, const Color(0xffE9E9EB), FontWeight.w400),

                        ],
                      ),
                      const SizedBox(height: 25,),
                      Row(
                        children: [
                          const Icon(Icons.check_box_outlined),
                          const SizedBox(width: 10,),
                          myStyle('Research Analysis', 16, const Color(0xffE9E9EB), FontWeight.w400),

                        ],
                      ),
                      const SizedBox(height: 25,),
                      Row(
                        children: [
                          const Icon(Icons.check_box_outlined),
                          const SizedBox(width: 10,),
                          myStyle('Research Analysis', 16, const Color(0xffE9E9EB), FontWeight.w400),

                        ],
                      ),
                      const SizedBox(height: 25,),
                      Row(
                        children: [
                          const Icon(Icons.check_box_outlined),
                          const SizedBox(width: 10,),
                          myStyle('Research Analysis', 16, const Color(0xffE9E9EB), FontWeight.w400),

                        ],
                      ),
                      const SizedBox(height: 25,),
                      Row(
                        children: [
                          const Icon(Icons.check_box_outlined),
                          const SizedBox(width: 10,),
                          myStyle('Research Analysis', 16, const Color(0xffE9E9EB), FontWeight.w400),

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
