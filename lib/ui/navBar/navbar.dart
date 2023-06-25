import 'package:flutter/material.dart';
import 'package:somrat/%20widget/custom_color.dart';
import 'package:somrat/%20widget/custom_modal_sheet.dart';
import 'package:somrat/ui/navBar/calender.dart';
import 'package:somrat/ui/navBar/home_page.dart';
import 'package:somrat/ui/navBar/person.dart';
import 'package:somrat/ui/navBar/project.dart';
class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  List<Widget> page = [const HomePage(),  const Calender(), const Project(), const Profile()];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: bgColor,
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xff246BFD),
          onPressed: (){
            myCustomBottomSheet(context);
          },
          child: const Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: page[currentIndex],
        bottomNavigationBar: Theme(
          data:Theme.of(context).copyWith(
            // sets the background color of the `BottomNavigationBar`
              canvasColor: ctnColor,

              ),
          child: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (v){
              setState(() {
                currentIndex = v;
              });
            },
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.white,
            selectedLabelStyle: const TextStyle(
              color: Colors.white,
            ),
            unselectedLabelStyle: const TextStyle(
              color: Colors.grey,
            ),
              unselectedItemColor: Colors.grey,
              items: [
            BottomNavigationBarItem(

                icon: Image.asset('assets/Layout.png'), label: 'My Task'),
            const BottomNavigationBarItem(icon: Icon(Icons.calendar_today_outlined), label: 'Calender'),

            const BottomNavigationBarItem(icon: Icon(Icons.file_open_sharp), label: 'Project'),
            const BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ]),
        )



    );
  }
}
