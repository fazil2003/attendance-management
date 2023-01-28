import 'package:attendance_management/helpers/custom_route.dart';
// import 'package:attendance/screens/admin_profile_screen.dart';
// import 'package:attendance/screens/admin_student_details.dart';
// import 'package:attendance/screens/admin_student_location.dart';
import 'package:attendance_management/screens/leave_application_screen.dart';
import 'package:attendance_management/screens/mentor_details_screen.dart';
import 'package:attendance_management/screens/student_check_attendance.dart';
import 'package:attendance_management/widgets/tabs_screen.dart';
import 'package:flutter/material.dart';

class studentPage extends StatelessWidget {

  const studentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        primaryColor: Color(
          0xFF71269F,
        ),
        accentColor: Colors.grey,
        pageTransitionsTheme: PageTransitionsTheme(builders: {
          TargetPlatform.android: CustomPageTransitionBuilder(),
          TargetPlatform.iOS: CustomPageTransitionBuilder(),
        }),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('DoTE Attendance Tracker'),
          backgroundColor: Color(0xFF71269F),
        ),
        body: TabsScreen(),
      ),
      // home: AdminProfile(),
      routes: {
        CheckAttendance.routeName: (ctx) => CheckAttendance(),
        MentorDetails.routeName: (ctx) => MentorDetails(),
        LeaveApplication.routeName: (ctx) => LeaveApplication(),
      },
    );
  }
}
