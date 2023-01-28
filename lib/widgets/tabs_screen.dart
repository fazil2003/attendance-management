import 'package:attendance_management/screens/admin_home_screen.dart';
import 'package:attendance_management/screens/mentor_home_screen.dart';
import 'package:attendance_management/screens/student_home_screen.dart';
import 'package:attendance_management/screens/student_profile_screen.dart';
import "package:flutter/material.dart";

class TabsScreen extends StatefulWidget {
  // final List<Meal> favorites;
  // TabsScreen(this.favorites);
  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Widget>? _pages;
  var _selectedIndex = 0;
  PageController? _pageController;

  @override
  void initState() {
    _pages = [
      StudentHomeScreen(),
      ProfileScreen(),
    ];
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // void selectPage(int index) {
    //   setState(() {
    //     _selectedIndex = index;
    //   });
    // }

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
        //
        //
        //using this page controller you can make beautiful animation effects
        _pageController!.animateToPage(
          index,
          duration: Duration(milliseconds: 400),
          curve: Curves.easeOut,
        );
      });
    }

    return Scaffold(
      // body: _pages == null ? null : _pages![selectedIndex],
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _selectedIndex = index);
          },
          children: _pages!,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Profile',
          )
        ],
      ),
    );
  }
}
