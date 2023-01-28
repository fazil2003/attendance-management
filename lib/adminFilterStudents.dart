import 'package:flutter/material.dart';
import 'defaultSettings.dart';

class adminFilterStudents extends StatefulWidget{
  const adminFilterStudents({super.key});

  @override
  _adminFilterStudents createState() => _adminFilterStudents();

}

class _adminFilterStudents extends State<adminFilterStudents>{

  bool valueOfCheckBox1 = false;
  bool valueOfCheckBox2 = false;
  TimeOfDay _timeOfDayStart = TimeOfDay.now();
  TimeOfDay _timeOfDayEnd = TimeOfDay.now();

  void _showTimePickerStart() {
    showTimePicker(
        context: context, initialTime: TimeOfDay.now()
    ).then(
            (value){
          setState(() {
            _timeOfDayStart = value!;
          });
        }
    );
  }

  void _showTimePickerEnd() {
    showTimePicker(
        context: context, initialTime: TimeOfDay.now()
    ).then(
            (value){
          setState(() {
            _timeOfDayEnd = value!;
          });
        }
    );
  }

  final List listItem = [
    "Item 1",
    "Item 2",
    "Item 3"
  ];

  String valueChoose = "";

  _adminFilterStudents() {
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
        body: Column(
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
            Row(
              children: [
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: Column(
                    children: [
                      Text(
                        "Date",
                        style: TextStyle(
                            fontFamily: 'Syne',
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        decoration: BoxDecoration(
                            color: Colors.grey[100],
                            border: Border.all(color: Colors.grey, width: 1),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: DropdownButton<String>(
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
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: Column(
                    children: [
                      Text(
                        "Attendance",
                        style: TextStyle(
                            fontFamily: 'Syne',
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        decoration: BoxDecoration(
                            color: Colors.grey[100],
                            border: Border.all(color: Colors.grey, width: 1),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: DropdownButton<String>(
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
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: Text('Roll No')
                ),
                Flexible(
                    flex: 3,
                    fit: FlexFit.tight,
                    child: Text('Name')
                ),
                Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Text('Geo Fence Attendance')
                ),
                Flexible(
                  flex: 5,
                  fit: FlexFit.tight,
                  child: Column(
                    children: [
                      Text('Mentor Attendance'),
                      Row(
                        children: [
                          Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Text('In Time')
                          ),
                          Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Text('Out Time')
                          ),
                          Flexible(
                              flex: 1,
                              fit: FlexFit.tight,
                              child: Text('Attendance')
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Card(
              shadowColor: Colors.blueAccent,
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Flexible(
                        flex: 2,
                        fit: FlexFit.tight,
                        child: Text('20i201')
                    ),
                    Flexible(
                        flex: 3,
                        fit: FlexFit.tight,
                        child: Text('Jake', style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),)
                    ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Checkbox(
                        value: this.valueOfCheckBox1,
                        onChanged: (bool? value) {
                          setState(() {
                            this.valueOfCheckBox1 = value!;
                          });
                        },
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      fit: FlexFit.tight,
                      child: MaterialButton(
                        onPressed: _showTimePickerStart,
                        child: Text(_timeOfDayStart.format(context).toString()),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      fit: FlexFit.tight,
                      child: MaterialButton(
                        onPressed: _showTimePickerEnd,
                        child: Text(_timeOfDayEnd.format(context).toString()),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Checkbox(
                        value: this.valueOfCheckBox2,
                        onChanged: (bool? value) {
                          setState(() {
                            this.valueOfCheckBox2 = value!;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              shadowColor: Colors.blueAccent,
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Flexible(
                        flex: 2,
                        fit: FlexFit.tight,
                        child: Text('20i401')
                    ),
                    Flexible(
                        flex: 3,
                        fit: FlexFit.tight,
                        child: Text('Sully', style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),)
                    ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Checkbox(
                        value: this.valueOfCheckBox1,
                        onChanged: (bool? value) {
                          setState(() {
                            this.valueOfCheckBox1 = value!;
                          });
                        },
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      fit: FlexFit.tight,
                      child: MaterialButton(
                        onPressed: _showTimePickerStart,
                        child: Text(_timeOfDayStart.format(context).toString()),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      fit: FlexFit.tight,
                      child: MaterialButton(
                        onPressed: _showTimePickerEnd,
                        child: Text(_timeOfDayEnd.format(context).toString()),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Checkbox(
                        value: this.valueOfCheckBox2,
                        onChanged: (bool? value) {
                          setState(() {
                            this.valueOfCheckBox2 = value!;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
