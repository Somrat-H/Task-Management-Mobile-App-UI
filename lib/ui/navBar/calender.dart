import 'package:flutter/material.dart';
import 'package:somrat/%20widget/calender_tile.dart';
import 'package:somrat/%20widget/custom_color.dart';
import 'package:somrat/ui/data/dummy_calender_data.dart';

import '../../ widget/custom_appbar.dart';
import '../../ widget/my_style.dart';

class Calender extends StatefulWidget {
  
  const Calender({Key? key}) : super(key: key);

  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
   int track = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
          child: Column(
        children: [
          customAppBar('Parto Team'),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.cases_rounded),
                    myStyle(
                        '  March, 04', 20, const Color(0xffF8F8F8), FontWeight.w700),
                  ],
                ),
                Row(
                  children: [
                    myStyle('8 Tasks Today', 16, const Color(0xffE9E9EB),
                        FontWeight.w400),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              height: 110,
              width: double.infinity,
              child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) {
                    return InkWell(
                      onTap: (){
                       track = index;
                       setState(() {
                         
                       });
                      },
                      child: Container(
                        height: 100,
                        width: 90,
                        decoration: BoxDecoration(
                            color: track == index ? Colors.blue : const Color(0xff292B3E),
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            myStyle(myCalenderData[index].date.toString(), 36,
                              track == index ?   Colors.white : const Color(0xff8A8A8E), FontWeight.w700),
                            myStyle(myCalenderData[index].day.toString(), 16,
                                track == index ?   Colors.white : const Color(0xff8A8A8E), FontWeight.w400),
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (_, index) {
                    return const SizedBox(
                      width: 10,
                    );
                  },
                  itemCount: myCalenderData.length),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                   myCalenderTile(),
                      myCalenderTile(),
                      myCalenderTile(),
                ],
              ),
            )
            )

        ],
      )),
    );
  }
}
