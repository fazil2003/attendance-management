import 'package:attendance_management/models/student.dart';
import 'package:flutter/material.dart';

class MentorDetails extends StatelessWidget {
  static const routeName = '/mentor-details';
  Student student = Student(
    imageUrl: 'assets/images/student_icon.png',
    name: 'Subash A A',
    rollNo: '20I301',
    emailId: "subashMentor@gmail.com",
    phone: '1234567890',
    collegeName: 'Avinashi Road, Peelamedu, Coimbatore - 641004',
    companyName: 'ABC Industries Pvt Limited',
  );

  Widget row(String title, String content) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
            softWrap: true,
            overflow: TextOverflow.visible,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            width: 30,
          ),
          Flexible(
            child: Text(content,
                style: TextStyle(
                  height: 1.3,
                )),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mentor Details'),
        backgroundColor: Color(0xFF71269F),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                // mainAxisAlignment: MainAxisAlignment.cente,
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Text('Mentor Details',
                      style: TextStyle(
                        letterSpacing: 1.2,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      )),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              row("Name", student.name),
              row("Mentor Id", student.rollNo),
              row("Email Id", student.emailId),
              row("Phone Number", student.phone),
              row("Company Name", student.companyName),
              row("Company Address", student.collegeName),
            ],
          ),
        ),
      ),
    );
  }
}
