import 'package:attendance_management/leaveRequests.dart';
import 'package:attendance_management/studentAttendanceRegister.dart';
import 'package:flutter/material.dart';
import 'defaultSettings.dart';
import 'studentsList.dart';

class mentorPage extends StatelessWidget {
  const mentorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Attendance Management',
            style: TextStyle(
              fontFamily: 'Barlow',
            ),
          ),
          backgroundColor: primaryColor,
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: GridView(
              children: [
                // Container 1
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => studentAttendanceRegister()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[200],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/icon-attendance-register.png'),
                        Align(
                            alignment: Alignment.center,
                            child: Text("Attendance\nRegister", style: TextStyle(color: Colors.black, fontSize: 20, fontFamily: 'Syne'),))
                      ],
                    ),
                  ),
                ),
                // Container 2
                GestureDetector(
                  onTap: () => print("Clicked"),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[200],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/icon-generate-report.png'),
                        Align(
                            alignment: Alignment.center,
                            child: Text("Generate\nReport", style: TextStyle(color: Colors.black, fontSize: 20, fontFamily: 'Syne'),))
                      ],
                    ),
                  ),
                ),
                // Container 3
                GestureDetector(
                  onTap: () => {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => studentsList()))
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[200],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/icon-students-list.png'),
                        Align(
                            alignment: Alignment.center,
                            child: Text("Students\nList", style: TextStyle(color: Colors.black, fontSize: 20, fontFamily: 'Syne'),))
                      ],
                    ),
                  ),
                ),
                // Container 4
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => leaveRequests()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[200],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/icon-leave-requests.png'),
                        Align(
                            alignment: Alignment.center,
                            child: Text("Leave\nRequest", style: TextStyle(color: Colors.black, fontSize: 20, fontFamily: 'Syne'),))
                      ],
                    ),
                  ),
                ),
              ],
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10
              ),
            ),
          ),
        ),
      ),
    );
  }
}
