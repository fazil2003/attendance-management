import 'package:flutter/material.dart';
import 'defaultSettings.dart';

class leaveRequests extends StatefulWidget{
  const leaveRequests({super.key});

  @override
  _leaveRequests createState() => _leaveRequests();

}

class _leaveRequests extends State<leaveRequests>{

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
            Card(
              shadowColor: Colors.blueAccent,
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Image.asset('assets/icon-student.png')
                    ),
                    Flexible(
                        flex: 2,
                        fit: FlexFit.tight,
                        child: Column(
                          children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                    'Jake Sully',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Syne'
                                    ),
                                ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                  '100%',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: primaryColor,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Syne'
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Text('dd/mm//yy'),
                                Text(' - '),
                                Text('dd/mm//yy'),
                              ],
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                  'Reason',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.blueAccent,
                                      fontFamily: 'Syne'
                                  ),
                              ),
                            ),
                            Row(
                              children: [
                                Flexible(
                                  flex: 1,
                                  fit: FlexFit.tight,
                                  child: MaterialButton(
                                    color: Colors.greenAccent,
                                    onPressed: (){},
                                    child: Text("Accept"),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Flexible(
                                  flex: 1,
                                  fit: FlexFit.tight,
                                  child: MaterialButton(
                                    color: Colors.redAccent,
                                    onPressed: (){},
                                    child: Text("Reject"),
                                  ),
                                ),
                              ],
                            ),
                          ],
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
