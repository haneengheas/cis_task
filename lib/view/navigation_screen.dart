import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:cis_task/styles/colors.dart';
import 'package:cis_task/view/view.dart';
import 'package:flutter/material.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _selectedIndex = 0;
  List<Widget> pages = [
    //ToDo

    Container(),
    const Doctors(),
    Container(),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[_selectedIndex],
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: _selectedIndex,
          showElevation: true, // use this to remove appBar's elevation
          onItemSelected: (index) => setState(() {
            _selectedIndex = index;
          }),
          items: [
            BottomNavyBarItem(
                icon: const Icon(
                  Icons.home,
                ),
                title: const Text(
                  'Home',
                  style: TextStyle(
                    color: purple,
                  ),
                ),
                activeColor: purple,
                inactiveColor: Colors.black),
            BottomNavyBarItem(
                icon: const Icon(
                  Icons.work_outline,
                ),
                title: const Text(
                  'Doctor',
                  style: TextStyle(
                    color: purple,
                  ),
                ),
                activeColor: purple,
                inactiveColor: Colors.black),
            BottomNavyBarItem(
                icon: const Icon(
                  Icons.chat_bubble_outline,
                ),
                title: const Text(
                  'chat',
                  style: TextStyle(
                    color: purple,
                  ),
                ),
                activeColor: purple,
                inactiveColor: Colors.black),
            BottomNavyBarItem(
                icon: const Icon(
                  Icons.date_range,
                ),
                title: const Text(
                  'archive',
                  style: TextStyle(
                    color: purple,
                  ),
                ),
                activeColor: purple,
                inactiveColor: Colors.black),
            BottomNavyBarItem(
                icon: const Icon(
                  Icons.person,
                ),
                title: const Text(
                  'profile',
                  style: TextStyle(
                    color: purple,
                  ),
                ),
                activeColor: purple,
                inactiveColor: Colors.black),
          ],
        ));
  }
}
