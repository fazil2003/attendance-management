import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'defaultSettings.dart';

class adminAttendanceReport extends StatefulWidget{
  const adminAttendanceReport({super.key});

  @override
  _adminAttendanceReport createState() => _adminAttendanceReport();

}

class _adminAttendanceReport extends State<adminAttendanceReport>{

  final List listItem = [
    "Item 1",
    "Item 2",
    "Item 3"
  ];

  String valueChoose = "";

  _adminAttendanceReport() {
    valueChoose = listItem[0];
  }

  Widget buildExportButton(){
    return Container(
        padding: EdgeInsets.symmetric(vertical: 25),
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor,
          ),
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Export',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Syne',
              ),
            ),
          ),
        )
    );
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
                  "Date",
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
                  "Attendance Range",
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
                  height: 30,
                ),
                buildExportButton(),
              ]
          ),
        ),
      ),
    );
  }
}
