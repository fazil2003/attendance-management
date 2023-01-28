import 'package:flutter/material.dart';

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

class AdminProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Profile"),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            children: [
              row("Name", "sample"),
              row("Email Id", 'sample'),
              row("Phone Number", 'sample'),
            ],
          ),
        ));
  }
}
