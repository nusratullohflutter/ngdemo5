import 'package:flutter/material.dart';
import 'package:ngdemo5/pages/home_page.dart';
import 'package:ngdemo5/pages/signup_page.dart';

class SigninPage extends StatefulWidget {
  static const String id = "signin_page";

  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  _callSignUpPage() {
    Navigator.pushReplacementNamed(context, SignupPage.id);
  }

  _callHomePage() {
    Navigator.pushReplacementNamed(context, HomePage.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color.fromRGBO(193, 53, 132, 1),
              Color.fromRGBO(131, 58, 100, 1)
            ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // #logo
                  Text(
                    "Instagram",
                    style: TextStyle(
                        fontSize: 45,
                        fontFamily: "Billabong",
                        color: Colors.white),
                  ),
                  //# email input
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 50,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.white.withOpacity(0.2)),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          hintText: "Email",
                          border: InputBorder.none,
                          hintStyle:
                              TextStyle(fontSize: 12, color: Colors.white54)),
                    ),
                  ),

                  //# password input

                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 50,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.white.withOpacity(0.2)),
                    child: TextField(
                      obscureText: true,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          hintText: "Password",
                          border: InputBorder.none,
                          hintStyle:
                              TextStyle(fontSize: 12, color: Colors.white54)),
                    ),
                  ),

                  //# signin button
                  GestureDetector(
                    onTap: () {
                      _callHomePage();
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 10),
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Center(
                        child: Text(
                          "Sign In",
                          style: TextStyle(fontSize: 17, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //# siginup
            Container(
              height: 48,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      _callSignUpPage();
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
