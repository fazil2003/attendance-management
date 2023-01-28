import 'package:attendance_management/models/home_item.dart';
import 'package:attendance_management/widgets/grid_item.dart';
import 'package:flutter/material.dart';

class MentorHomeScreen extends StatelessWidget {
  static const List<HomeItem> items = [
    HomeItem(
      title: 'Attendance Register',
      imageUrl: 'assets/images/attendance.png',
      page: '',
    ),
    HomeItem(
      title: 'Generate Report',
      imageUrl: 'assets/images/report.png',
      page: '',
    ),
    HomeItem(
      title: 'Student\'s List',
      imageUrl: 'assets/images/list.png',
      page: '',
    ),
    HomeItem(
      title: 'Leave Requests',
      imageUrl: 'assets/images/leave.png',
      page: '',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 24),
        child: GridView.builder(
          itemCount: items.length,
          itemBuilder: (ctx, index) => GridItem(
            items[index].title,
            items[index].imageUrl,
            items[index].page,
          ),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            childAspectRatio: 1,
            maxCrossAxisExtent: 200,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
        ),
      ),
    );
  }
}
