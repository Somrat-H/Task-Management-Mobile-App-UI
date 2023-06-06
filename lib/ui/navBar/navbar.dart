import 'package:flutter/material.dart';
import 'package:somrat/%20widget/custom_color.dart';
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
  List<Widget> page = [HomePage(), Calender(), Project(), Profile()];
  int currenIndex = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: bgColor,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xff246BFD),
          onPressed: (){

          },
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: page[currenIndex],
        bottomNavigationBar: Theme(
          data:Theme.of(context).copyWith(
            // sets the background color of the `BottomNavigationBar`
              canvasColor: ctnColor,

              ),
          child: BottomNavigationBar(
            currentIndex: currenIndex,
            onTap: (v){
              setState(() {
                currenIndex = v;
              });
            },
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.white,
            selectedLabelStyle: TextStyle(
              color: Colors.white,
            ),
            unselectedLabelStyle: TextStyle(
              color: Colors.grey,
            ),
              unselectedItemColor: Colors.grey,
              items: [
            BottomNavigationBarItem(

                icon: Image.asset('assets/Layout.png'), label: 'My Task'),
            BottomNavigationBarItem(icon: Icon(Icons.calendar_today_outlined), label: 'Calender'),

            BottomNavigationBarItem(icon: Icon(Icons.file_open_sharp), label: 'Project'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ]),
        )



    );
  }
}
