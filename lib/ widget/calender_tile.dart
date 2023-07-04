import 'package:flutter/material.dart';

import 'my_style.dart';

myCalenderTile() {
  return SizedBox(
    height: 120,
    width: double.infinity,
    child: LayoutBuilder(
      builder: (context, constraint){
      return Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff292E3B),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, right: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              myStyle('Meeting Discord', 16, Colors.white,
                                  FontWeight.w400),
                              Container(
                                height: 16,
                                width: 16,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xff00CC39),
                                ),
                              )
                            ],
                          ),
                        ),
                        myStyle('Discuss Web Design Project', 12,
                            const Color(0xffE9E9EB), FontWeight.w400),
                        const SizedBox(
                          height: 20,
                        ),
                        myStyle('10:00 AM - 10:30 AM', 14, Colors.white,
                            FontWeight.w600),
                      ],
                    ),
                  ),
                );
      // return Stack(
      //   children: [
      //     Align(
      //       alignment: Alignment.bottomRight,
      //       child: Padding(
      //         padding: const EdgeInsets.only(right: 20),
      //         child: SizedBox(
      //           height: 110,
      //           width: 350,
      //           child: Container(
      //             decoration: BoxDecoration(
      //               color: const Color(0xff292E3B),
      //               borderRadius: BorderRadius.circular(8),
      //             ),
      //             child: Padding(
      //               padding: const EdgeInsets.only(left: 30),
      //               child: Column(
      //                 crossAxisAlignment: CrossAxisAlignment.start,
      //                 children: [
      //                   Padding(
      //                     padding: const EdgeInsets.only(top: 10, right: 16),
      //                     child: Row(
      //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                       children: [
      //                         myStyle('Meeting Discord', 16, Colors.white,
      //                             FontWeight.w400),
      //                         Container(
      //                           height: 16,
      //                           width: 16,
      //                           decoration: const BoxDecoration(
      //                             shape: BoxShape.circle,
      //                             color: Color(0xff00CC39),
      //                           ),
      //                         )
      //                       ],
      //                     ),
      //                   ),
      //                   myStyle('Discuss Web Design Project', 12,
      //                       const Color(0xffE9E9EB), FontWeight.w400),
      //                   const SizedBox(
      //                     height: 20,
      //                   ),
      //                   myStyle('10:00 AM - 10:30 AM', 14, Colors.white,
      //                       FontWeight.w600),
      //                 ],
      //               ),
      //             ),
      //           ),
      //         ),
      //       ),
      //     ),
      //     Positioned(
      //       top: 50,
      //       left: 35,
      //       child: Container(
      //         height: 15,
      //         width: 15,
      //         decoration:
      //             const BoxDecoration(shape: BoxShape.circle, color: Color(0xff9C67F9)),
      //       ),
      //     )
      //   ],
      // );
      }
    ),
  );
}
