
import 'package:flutter/material.dart';
import 'package:somrat/%20widget/custom_appbar.dart';
import 'package:somrat/%20widget/custom_color.dart';
import 'package:somrat/%20widget/custom_tile.dart';
import 'package:somrat/%20widget/myStyle.dart';
import 'package:somrat/ui/data/dummy_data.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key ?key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Column(
          children: [
            customAppBar('Parto Team'),
            SizedBox(height: height * 0.01,),
            Align(
                alignment: Alignment.topLeft,

                child: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: myStyle(
                      'Project Task', 16, Colors.white, FontWeight.w700),
                )
            ),

            SizedBox(height: height * 0.02,),
<<<<<<< HEAD
            
           Padding(
              padding: const EdgeInsets.only(left: 16),
              child: SizedBox(
                height: height * 0.10,
                width: double.infinity,
                child : ListView.separated(
                  shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: dummyData.length,
                    itemBuilder: (_, index) {
                      return Container(
                        height: height * 0.08,
                        width: width * .35,
                        decoration: BoxDecoration(
                          color: ctnColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: height * 0.05,
                              width: width * 0.015,
                              color: dummyData[index].color,
                            ),
                            myStyle(dummyData[index].num.toString(), 20,
                                Colors.white, FontWeight.w700),
                            myStyle(dummyData[index].status.toString(), 14,
                                Colors.white, FontWeight.w400),
                            SizedBox(width: width * .05,)
                          ],
                        ),
                      );
                    },


                    separatorBuilder: (context, index) {
                      return SizedBox(width: width * .020,);
                    }),
              ),
            ) ,
            //  GridView.builder(
            //     itemCount: dummyData.length,
            //     gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
            //         mainAxisSpacing: 5,
            //         crossAxisSpacing: 5,
            //         crossAxisCount: 2,
            //         childAspectRatio: 1.2),
            //     itemBuilder: (context, index){
            //       return Container(
            //         height: height * 0.08,
            //         width: width * .20,
            //         decoration: BoxDecoration(
            //           color: ctnColor,
            //           borderRadius: BorderRadius.circular(8),
            //         ),
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //             Container(
            //               height: height * 0.05,
            //               width: width * 0.015,
            //               color: dummyData[index].color,
            //             ),
            //             myStyle(dummyData[index].num.toString(), 20,
            //                 Colors.white, FontWeight.w700),
            //             myStyle(dummyData[index].status.toString(), 14,
            //                 Colors.white, FontWeight.w400),
            //             SizedBox(width: width * .05,)
            //           ],
            //         ),
            //       );
            //     }),
=======



             Padding(
                 padding: const EdgeInsets.only(left: 16),
                 child: SizedBox(
                   height: height * 0.10,
                   width: double.infinity,
                   child: ListView.separated(
                       shrinkWrap: true,
                       scrollDirection: Axis.horizontal,
                       itemCount: dummyData.length,
                       itemBuilder: (_, index) {
                         return Container(
                           height: height * 0.08,
                           width: width * .35,
                           decoration: BoxDecoration(
                             color: ctnColor,
                             borderRadius: BorderRadius.circular(8),
                           ),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Container(
                                 height: height * 0.05,
                                 width: width * 0.015,
                                 color: dummyData[index].color,
                               ),
                               myStyle(dummyData[index].num.toString(), 20,
                                   Colors.white, FontWeight.w700),
                               myStyle(dummyData[index].status.toString(), 14,
                                   Colors.white, FontWeight.w400),
                               SizedBox(width: width * .05,)
                             ],
                           ),
                         );
                       },


                       separatorBuilder: (context, index) {
                         return SizedBox(width: width * .020,);
                       }),
                 )
             ),



           // if(width > 400)
           // Expanded(
           //    child: GridView.builder(
           //        itemCount: dummyData.length,
           //        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
           //            mainAxisSpacing: 5,
           //            crossAxisSpacing: 5,
           //            crossAxisCount: 3,
           //            childAspectRatio: 1.2),
           //        itemBuilder: (context, index){
           //          return Container(
           //            height: height * 0.08,
           //            width: width * .20,
           //            decoration: BoxDecoration(
           //              color: ctnColor,
           //              borderRadius: BorderRadius.circular(8),
           //            ),
           //            child: Row(
           //              mainAxisAlignment: MainAxisAlignment.spaceBetween,
           //              children: [
           //                Container(
           //                  height: height * 0.05,
           //                  width: width * 0.015,
           //                  color: dummyData[index].color,
           //                ),
           //                myStyle(dummyData[index].num.toString(), 20,
           //                    Colors.white, FontWeight.w700),
           //                myStyle(dummyData[index].status.toString(), 14,
           //                    Colors.white, FontWeight.w400),
           //                SizedBox(width: width * .05,)
           //              ],
           //            ),
           //          );
           //        }),
           //  ),


>>>>>>> 354f041718cc1bcec77f2cf3efb1c2ad7e51635a
            SizedBox(
              height: width * 0.06,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  myStyle('My Task', 16, Colors.white, FontWeight.w700),
                  myStyle('See More', 16, Colors.white, FontWeight.w400),
                ],
              ),
            ),
            SizedBox(height: width * 0.0189,),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    customTile(context),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01,) ,
                    customTile(context),
                       SizedBox(height: MediaQuery.of(context).size.height * 0.01,) ,
                    customTile(context),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.01,) ,
                    customTile(context),

                       SizedBox(height: MediaQuery.of(context).size.height * 0.01,) ,
                    customTile(context),
                       SizedBox(height: MediaQuery.of(context).size.height * 0.01,) ,
                    customTile(context),
                       SizedBox(height: MediaQuery.of(context).size.height * 0.01,) ,
                    customTile(context),
                       SizedBox(height: MediaQuery.of(context).size.height * 0.01,) ,
                    customTile(context),
                  ],
                ),
              ),
            )


          ],
        ),
      ),
    );
  }
}
