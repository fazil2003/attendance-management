import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class CheckAttendance extends StatefulWidget {
  static const routeName = '/check-attendance';

  @override
  State<CheckAttendance> createState() => _CheckAttendanceState();
}

class _CheckAttendanceState extends State<CheckAttendance> {
  var isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Check Attendance'),
        backgroundColor: Color(0xFF71269F),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 15,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SleekCircularSlider(
                    appearance: CircularSliderAppearance(
                      size: 120,
                      startAngle: 0,
                      angleRange: 360,
                      customWidths: CustomSliderWidths(
                        progressBarWidth: 10,
                        trackWidth: 10,
                        handlerSize: 0,
                      ),
                      customColors: CustomSliderColors(
                        progressBarColor: Colors.greenAccent.shade400,
                      ),
                    ),
                    min: 0,
                    max: 100,
                    initialValue: 90,
                    innerWidget: (double) => ClipRRect(
                      child: Image(
                        image: AssetImage('assets/images/student_icon.png'),
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Venkatesh R',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text('PSG Polytechinic College'),
                      SizedBox(
                        height: 5,
                      ),
                      Text('ABC Industries Pvt Limited'),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Table(
                border: TableBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  horizontalInside:
                      BorderSide(color: Colors.white, width: 10.0),
                  // verticalInside: BorderSide(color: Colors.black, width: 10.0),
                ),
                children: [
                  //This table row is for the table header which is static
                  const TableRow(children: [
                    Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          "Date",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          "Geo Location",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black87),
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          "Mentor Attendance",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black87),
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          "Total Duration",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black87),
                        ),
                      ),
                    ),
                  ]),
                  // Using the spread operator to add the remaining table rows which have dynamic data
                  // Be sure to use .asMap().entries.map if you want to access their indexes and objectName.map() if you have no interest in the items index.

                  TableRow(
                      // decoration: BoxDecoration(color: Color(0xFFD3C1F3)),
                      children: [
                        const Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Text(
                              '22/01/2022',
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Checkbox(
                              activeColor: Colors.greenAccent.shade400,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              onChanged: (val) {
                                setState(() {
                                  isChecked = val!;
                                });
                              },
                              value: isChecked,
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Checkbox(
                              activeColor: Colors.greenAccent.shade400,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              onChanged: (val) {
                                setState(() {
                                  isChecked = val!;
                                });
                              },
                              value: isChecked,
                            ),
                          ),
                        ),
                        const Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: Text(
                              '6 hrs',
                            ),
                          ),
                        ),
                      ]),
                  TableRow(
                      // decoration: BoxDecoration(color: Colors.black12),
                      children: [
                        const Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: Text(
                              '23/01/2022',
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Checkbox(
                              activeColor: Colors.greenAccent.shade400,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              onChanged: (val) {
                                setState(() {
                                  isChecked = val!;
                                });
                              },
                              value: isChecked,
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Checkbox(
                              activeColor: Colors.greenAccent.shade400,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              onChanged: (val) {
                                setState(() {
                                  isChecked = val!;
                                });
                              },
                              value: isChecked,
                            ),
                          ),
                        ),
                        const Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: Text(
                              '5 hrs',
                            ),
                          ),
                        ),
                      ]),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
