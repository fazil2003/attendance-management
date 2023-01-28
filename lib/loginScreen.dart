import 'package:attendance_management/loginMentor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'loginAdmin.dart';
import 'loginStudent.dart';
import 'defaultSettings.dart';

class LoginScreen extends StatefulWidget{
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();

}

class _LoginScreenState extends State<LoginScreen>{

  Widget buildLoginButton(){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => print('Login pressed.'),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            'Login',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      )
    );
  }

  Widget buildSignUpButton(){
    return GestureDetector(
      onTap: () => print("Sign up pressed."),
      child:  RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Don\'t have an account? ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextSpan(
              text: 'Sign Up',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ]
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
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff71269F),
                    Color(0xcc71269F),
                    Color(0x9971269F),
                    Color(0x6671269F)
                  ]
              )
          ),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.grey[500],
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: TabBar(
                      indicator: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25.0)
                      ),
                      labelColor: primaryColor,
                      unselectedLabelColor: Colors.black,
                      tabs: [
                        Tab(text: 'Student',),
                        Tab(text: 'Mentor',),
                        Tab(text: 'Admin',),
                      ]
                  ),
                ),
                Expanded(
                    child: TabBarView(
                      children: [
                        LoginStudent(),
                        LoginMentor(),
                        LoginAdmin(),
                      ],
                    ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



