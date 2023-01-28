import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'defaultSettings.dart';

class studentsList extends StatelessWidget {
  const studentsList({Key? key}) : super(key: key);

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
                        CircularPercentIndicator(
                          radius: 100,
                          lineWidth: 10,
                          percent: 0.9,
                          progressColor: Colors.deepPurple,
                          backgroundColor: Colors.deepPurple.shade100,
                          circularStrokeCap: CircularStrokeCap.round,
                          center:  Image.asset('assets/icon-student.png'),
                        ),
                        Align(
                            alignment: Alignment.center,
                            child: Text("Name1\n90%", style: TextStyle(color: Colors.black, fontSize: 20, fontFamily: 'Syne'),))
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
                        CircularPercentIndicator(
                          radius: 100,
                          lineWidth: 10,
                          percent: 0.45,
                          progressColor: Colors.deepPurple,
                          backgroundColor: Colors.deepPurple.shade100,
                          circularStrokeCap: CircularStrokeCap.round,
                          center:  Image.asset('assets/icon-student.png'),
                        ),
                        Align(
                            alignment: Alignment.center,
                            child: Text("Name2\n45%", style: TextStyle(color: Colors.black, fontSize: 20, fontFamily: 'Syne'),))
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
