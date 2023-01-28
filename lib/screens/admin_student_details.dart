import 'package:attendance_management/models/student.dart';
import 'package:attendance_management/screens/admin_student_location.dart';
import 'package:flutter/material.dart';

class StudentDetails extends StatelessWidget {
  Student student = Student(
    imageUrl: 'assets/images/student_icon.png',
    name: 'Venkatesh R',
    rollNo: '20I354',
    emailId: "venkatesh@gmail.com",
    phone: '1234567890',
    collegeName:
        'PSG Polytechinic College, Avinashi Road, Peelamedu, Coimbatore - 641004',
    companyName: 'ABC Industries Pvt Limited, Erode - 600004',
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
        title: Text('Student Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage(student.imageUrl),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            row("Name", student.name),
            row("Roll Number", student.rollNo),
            row("Email Id", student.emailId),
            row("Phone Number", student.phone),
            row("Polytechnic Name", student.collegeName),
            row("Company Name", student.companyName),
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: const Text(
                'Internship Duration',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            row(
              "From",
              "24/10/2022",
            ),
            row(
              "To",
              "02/12/2022",
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () => {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => StudentLocation()))
                  },
                  child: Text('Check Location'),
                  style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Generate Report'),
                  style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
