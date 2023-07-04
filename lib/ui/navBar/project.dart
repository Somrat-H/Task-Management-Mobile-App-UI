
import 'package:flutter/material.dart';
import 'package:somrat/%20widget/custom_project_tile.dart';
import 'package:somrat/%20widget/my_style.dart';
import 'package:somrat/ui/data/project_data.dart';

import '../../ widget/custom_project_deatils.dart';
class Project extends StatefulWidget {
  const Project({Key? key}) : super(key: key);

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  bool isTap = false;
  int track = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xff191A22),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(
                  height: 150,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(onPressed: (){
                            Navigator.pop(context);
                          }, icon: const Icon(Icons.arrow_back_ios), color: Colors.white ),
                          myStyle('Project', 16, Colors.white, FontWeight.w700),
                          const Icon(Icons.more_vert)
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 80,
                        width: double.infinity,
                        child: ListView.separated(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (_, index){
                              return InkWell(
                                autofocus: false,
                                onTap: (){
                                  // projectDummyData[index].isTap = true;
                                  track = index;
                                  setState(() {
                                  });
                                },
                                child: SizedBox(
                                  // width: double.infinity,
                                  height: 60,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 35,
                                            width: 44,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(8),
                                              // color: projectDummyData[index].isTap == true ? Colors.blue : Color(0xff292B3E),
                                              color: track == index ? Colors.blue : const Color(0xff292B3E),
                                            ),
                                            child: Center(
                                                child: myStyle(projectDummyData[index].numProject.toString(), 16, track == index ? Colors.white : const Color(0xff8A8A8E), FontWeight.w700)
                                              // child: myStyle(projectDummyData[index].numProject.toString(), 16, projectDummyData[index].isTap == true ? Colors.white : Color(0xff8A8A8E), FontWeight.w700),
                                            ),

                                          ),
                                          const SizedBox(width: 15,),
                                          // myStyle(projectDummyData[index].title.toString(), 16, projectDummyData[index].isTap == true ? Colors.white : Color(0xff8A8A8E), FontWeight.w700),
                                          myStyle(projectDummyData[index].title.toString(), 16, track == index ? Colors.white : const Color(0xff8A8A8E), FontWeight.w700),
                                        ],
                                      ),
                                      const SizedBox(height: 20,),

                                      // LayoutBuilder(
                                      //
                                      //   builder: (context, constraints) {
                                      //   return Container(
                                      //     color: Colors.blue,
                                      //     width: constraints.maxWidth * 1,
                                      //     height: constraints.maxHeight * 0.1,
                                      //   );
                                      // },),
                                      track == index ?  Container(
                                        width: 120,
                                        color: Colors.blue,
                                        height: 5,) : Container(),
                                      // SizedBox(height: 15,),
                                    ],
                                  ),
                                ),
                              );
                            }, separatorBuilder: (_, index){
                          return const SizedBox(
                            width: 25,
                          );
                        }, itemCount: projectDummyData.length),
                      ),
                    ],
                  ),
                ),



                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        InkWell(
                          autofocus: false,
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_)=> const ProjectDetails()));
                          },
                          child: myCustomProjectTile(context),
                        ),
                        const SizedBox(height: 5,),
                        InkWell(
                          autofocus: false,
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_)=> const ProjectDetails()));
                          },
                          child: myCustomProjectTile(context),
                        ),
                        const SizedBox(height: 5,),
                        InkWell(
                          autofocus: false,
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_)=> const ProjectDetails()));
                          },
                          child: myCustomProjectTile(context),
                        ),
                        const SizedBox(height: 5,),
                        InkWell(
                          autofocus: false,
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_)=> const ProjectDetails()));
                          },
                          child: myCustomProjectTile(context),
                        ),
                        const SizedBox(height: 5,),
                        InkWell(
                          autofocus: false,
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_)=> const ProjectDetails()));
                          },
                          child: myCustomProjectTile(context),
                        ),
                        const SizedBox(height: 5,),
                        InkWell(
                          autofocus: false,
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_)=> const ProjectDetails()));
                          },
                          child: myCustomProjectTile(context),
                        ),
                        const SizedBox(height: 5,),
                        InkWell(
                          autofocus: false,
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_)=> const ProjectDetails()));
                          },
                          child: myCustomProjectTile(context),
                        ),
                        const SizedBox(height: 5,),
                        InkWell(
                          autofocus: false,
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_)=> const ProjectDetails(),));
                          },
                          child: myCustomProjectTile(context),
                        ),
                        const SizedBox(height: 5,),
                        InkWell(
                          autofocus: false,
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_)=> const ProjectDetails(),));
                          },
                          child: myCustomProjectTile(context),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
      )
    );
  }
}
