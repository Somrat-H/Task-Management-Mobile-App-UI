import 'package:flutter/material.dart';
import 'package:somrat/%20widget/custom_button.dart';
import 'package:somrat/%20widget/my_style.dart';
import 'package:somrat/ui/team_member.dart';

myCustomBottomSheet(BuildContext context) {
  return showModalBottomSheet(
      backgroundColor: const Color(0xff292B3E),
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Wrap(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      myStyle(
                          'Add New Project', 16, Colors.white, FontWeight.w700),
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.cancel_outlined),
                        color: Colors.white,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: myStyle('Project Name', 16, const Color(0xffF8F8F8),
                        FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'Enter Your Project Name',
                        hintStyle: const TextStyle(
                          color: Colors.white,
                        ),
                        prefixIcon: const Icon(
                          Icons.cases_outlined,
                          color: Colors.white,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(20),
                        )),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: myStyle('Assigned to', 16, const Color(0xffF8F8F8),
                        FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'Select Your Team',
                        hintStyle: const TextStyle(
                          color: Colors.white,
                        ),
                        prefixIcon: const Icon(
                          Icons.person_add,
                          color: Colors.white,
                        ),
                        suffixIcon: const Icon(
                          Icons.arrow_drop_down_sharp,
                          color: Colors.white,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(20),
                        )),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: myStyle('Progress', 16, const Color(0xffF8F8F8),
                        FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'Ongoing',
                        hintStyle: const TextStyle(
                          color: Colors.white,
                        ),
                        prefixIcon: const Icon(
                          Icons.calendar_today_outlined,
                          color: Colors.white,
                        ),
                        suffixIcon: const Icon(
                          Icons.arrow_drop_down_sharp,
                          color: Colors.white,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(20),
                        )),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: myStyle('Timeline', 16, const Color(0xffF8F8F8),
                        FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: '2 March 2021',
                        hintStyle: const TextStyle(
                          color: Colors.white,
                        ),
                        prefixIcon: const Icon(
                          Icons.cases_outlined,
                          color: Colors.white,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(20),
                        )),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.attach_file,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      myStyle('Attched Files', 16, const Color(0xffF8F8F8),
                          FontWeight.w700),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const TeamMember()));
                    },
                    child: customButton(60, double.infinity, Colors.blue, 25,
                        myStyle('Save', 18, Colors.white, FontWeight.w700)),
                  )
                ],
              ),
            ),
          ],
        );
      });
}
