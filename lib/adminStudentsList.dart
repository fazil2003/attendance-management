import 'package:attendance_management/screens/admin_student_details.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'defaultSettings.dart';

class adminStudentsList extends StatefulWidget{
  const adminStudentsList({super.key});

  @override
  _adminStudentsList createState() => _adminStudentsList();

}

class _adminStudentsList extends State<adminStudentsList>{

  final List listItem = [
    "Item 1",
    "Item 2",
    "Item 3"
  ];

  String valueChoose = "";

  _adminStudentsList() {
    valueChoose = listItem[0];
  }

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
        body: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                "District",
                style: TextStyle(
                    fontFamily: 'Syne',
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
              Container(
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.only(left: 16, right: 16),
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    border: Border.all(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(15)
                ),
                child: DropdownButton<String>(
                    dropdownColor: Colors.white,
                    icon: Icon(Icons.arrow_drop_down),
                    iconSize: 36,
                    isExpanded: true,
                    underline: SizedBox(),
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16
                    ),
                    value: valueChoose,
                    items: listItem.map((valueItem) => DropdownMenuItem<String>(
                      child: Text(valueItem),
                      value: valueItem,
                    ),
                    ).toList(),
                    onChanged: (newValue){
                      setState(() {
                        valueChoose = newValue!;
                      });
                    }
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Company",
                style: TextStyle(
                    fontFamily: 'Syne',
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
              Container(
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.only(left: 16, right: 16),
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    border: Border.all(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(15)
                ),
                child: DropdownButton<String>(
                    dropdownColor: Colors.white,
                    icon: Icon(Icons.arrow_drop_down),
                    iconSize: 36,
                    isExpanded: true,
                    underline: SizedBox(),
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16
                    ),
                    value: valueChoose,
                    items: listItem.map((valueItem) => DropdownMenuItem<String>(
                      child: Text(valueItem),
                      value: valueItem,
                    ),
                    ).toList(),
                    onChanged: (newValue){
                      setState(() {
                        valueChoose = newValue!;
                      });
                    }
                ),
              ),
              SizedBox(
                height: 50,
              ),
              GridView(
                shrinkWrap: true,
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
                    onTap: () => {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => StudentDetails()))
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
            ]
          ),
        ),
      ),
    );
  }
}
