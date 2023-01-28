import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class LeaveApplication extends StatefulWidget {
  static const routeName = '/leave-application';

  @override
  State<LeaveApplication> createState() => _LeaveApplicationState();
}

class _LeaveApplicationState extends State<LeaveApplication> {
  @override
  DateTime? startDate;
  DateTime? endDate;

  void datePicker1() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2019),
            lastDate: DateTime.now())
        .then((value) {
      setState(() {
        startDate = value;
      });
    });
  }

  void datePicker2() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2019),
            lastDate: DateTime.now())
        .then((value) {
      setState(() {
        endDate = value;
      });
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Leave Application'),
        backgroundColor: Color(0xFF71269F),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Text('Apply Leave',
                  style: TextStyle(
                    letterSpacing: 1.2,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                height: 50,
              ),
              Text(
                'Start date',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(startDate == null
                        ? 'No Date Choosen'
                        : 'Date Choosen: ${DateFormat.yMd().format(startDate!)}'),
                    SizedBox(width: 10),
                    TextButton(
                      child: Text(
                          'Choose Date',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                          ),
                      ),
                      onPressed: () => datePicker1(),
                    ),
                  ],
                ),
              ),
              Text(
                'End date',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(endDate == null
                        ? 'No Date Choosen'
                        : 'Date Choosen: ${DateFormat.yMd().format(endDate!)}'),
                    SizedBox(width: 10),
                    TextButton(
                      child: Text(
                        'Choose Date',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      onPressed: () => datePicker2(),
                    ),
                  ],
                ),
              ),
              Text(
                'Reason',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              TextFormField(
                maxLines: 4,
                // keyboardType: TextInputType.multiline,
                // onSaved: (value) {
                //   print(value);
                // },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Provide a valid description.';
                  }
                  if (value.length < 10) {
                    return 'Provide description with more number of words.';
                  }
                  return null;
                },
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(20),
                child: ElevatedButton(
                  style: ButtonStyle(),
                  child: Text(
                    'Apply Leave',
                  ),
                  onPressed: () {
                    FocusScopeNode currentFocus = FocusScope.of(context);
                    if (!currentFocus.hasPrimaryFocus) {
                      currentFocus.unfocus();
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
