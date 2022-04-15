import 'dart:html';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../dashboard/views/dashboard_view.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(children: [
          //background
          Container(
            width: Get.width,
            child: Image.asset(
              "assets/images/bg.png",
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Text(
              " PRESENT",
              style: TextStyle(
                  fontSize: 30, height: 4, fontWeight: FontWeight.bold),
            ),
          ),
          //layer body
          Container(
            child: Column(
              children: [
                SizedBox(height: 50.0),
                Container(
                  width: 200,
                  child: Image.asset(
                    "assets/images/pfl.png",
                    // fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 75.0),
                Container(
                  width: 350,
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        // border: OutlineInputBorder(),
                        hintText: "Masukan email",
                        icon: Icon(
                          Icons.person,
                          color: Colors.black,
                        )),
                  ),
                ),
                SizedBox(height: 5.0),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Container(
                    width: 350,
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          // border: OutlineInputBorder(),
                          hintText: "Password",
                          icon: Icon(
                            Icons.lock,
                            color: Colors.black,
                          )),
                    ),
                  ),
                ),
                   SizedBox(height: 40.0),
                   TextButton(
                  style:
                      TextButton.styleFrom(backgroundColor: Color.fromARGB(255, 101, 138, 241)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DashboardView())
                    );
                  },
                  child: Text(
                    "LOGIN",
                    style: TextStyle(
                      color: Color(0xffffffff),
                    ),
                  ),
                 )],
            ),
          ),
        ]));
  }
}
