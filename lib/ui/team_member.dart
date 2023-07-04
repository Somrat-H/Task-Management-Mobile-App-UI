import 'package:flutter/material.dart';
import 'package:somrat/%20widget/custom_bottom_sheet.dart';
import 'package:somrat/%20widget/my_style.dart';

class TeamMember extends StatelessWidget {
  const TeamMember({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff191A22),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          myBottomSheet(context);
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios),
                  ),
                  const SizedBox(
                    width: 80,
                  ),
                  myStyle('Parto Team', 16, Colors.white, FontWeight.w700),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              Expanded(
                child: GridView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 10,
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 130,
                        width: 170,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color(0xff292B3E)),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Stack(
                                    children: [
                                      const CircleAvatar(
                                        maxRadius: 25,
                                        backgroundColor: Color(0xff8E8E93),
                                      ),
                                      Positioned(
                                          left: 35,
                                          top: 35,
                                          child: Container(
                                            height: 15,
                                            width: 15,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.green,
                                            ),
                                          ))
                                    ],
                                  ),
                                  const Icon(
                                    Icons.more_vert,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              myStyle('Shoo Phar Nho', 16, Colors.white,
                                  FontWeight.w700),
                              const SizedBox(
                                height: 10,
                              ),
                              myStyle('pharno@email.com', 12,
                                  const Color((0xffE9E9EB)), FontWeight.w400),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
