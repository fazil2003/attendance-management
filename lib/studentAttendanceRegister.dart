import 'package:flutter/material.dart';
import 'defaultSettings.dart';

class studentAttendanceRegister extends StatefulWidget{
  const studentAttendanceRegister({super.key});

  @override
  _studentAttendanceRegister createState() => _studentAttendanceRegister();

}

class _studentAttendanceRegister extends State<studentAttendanceRegister>{

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
