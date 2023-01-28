import 'package:attendance_management/models/home_item.dart';
import 'package:attendance_management/screens/leave_application_screen.dart';
import 'package:attendance_management/screens/mentor_details_screen.dart';
import 'package:attendance_management/screens/student_check_attendance.dart';
import 'package:attendance_management/widgets/grid_item.dart';
import 'package:flutter/material.dart';

class StudentHomeScreen extends StatelessWidget {
  static const List<HomeItem> items = [
    HomeItem(
      title: 'Check Attendance',
      imageUrl: 'assets/images/attendance.png',
      page: CheckAttendance.routeName,
    ),
    HomeItem(
      title: 'Mentor Details',
      imageUrl: 'assets/images/contact.png',
      page: MentorDetails.routeName,
    ),
    HomeItem(
      title: 'Apply for Leave',
      imageUrl: 'assets/images/leave.png',
      page: LeaveApplication.routeName,
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
