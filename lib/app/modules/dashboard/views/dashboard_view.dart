import 'package:absensi/app/modules/kehadiran/views/kehadiran_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../hadir/views/hadir_view.dart';
import '../controllers/dashboard_controller.dart';


class DashboardView extends GetView<DashboardController> {
    @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(children: [
          //background
          Container(
            width: Get.width,
            
            ),
        
          Center(
            child: Text(
              "Hi, Karyawan!",
              style: TextStyle(
                  fontSize: 30, height: 6, fontWeight: FontWeight.bold),
            ),
          ),
             //layer body
          Center(
            child: Column(
              children: [
                SizedBox(height: 50.0),
                Container(
                  width: 200,
                  child: Image.asset(
                    "assets/images/profile.png",
                    // fit: BoxFit.cover,
                 ),
                 
                
                 ),
                 SizedBox(height: 60.0),
                 Container(  
            child: Text(
              "Nama : Feminda Dwi S\nJabatan : Babu\nNo.HP : 085771667807\nAlamat : Korea Selatan belok kiri" ,
            ),
                 ),
        
                 SizedBox(height: 40.0),
                   TextButton(
                  style:
                      TextButton.styleFrom(backgroundColor: Color.fromARGB(255, 69, 201, 71)),
                  onPressed: () {
                     Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HadirView())
                    );
                  },
                  child: Text(
                    "HADIR",
                    style: TextStyle(
                      color: Color(0xffffffff),
                 ),
                  ),
                   ),
                  SizedBox(height: 8.0),
                   TextButton(
                  style:
                      TextButton.styleFrom(backgroundColor: Color.fromARGB(255, 255, 0, 0)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => KehadiranView())
                    );
                    // Navigator.pushNamed(context, '/kehadiran');
                  },
                  child: Text(
                    "TIDAK HADIR",
                    style: TextStyle(
                      color: Color(0xffffffff),
                    ),
                  ),
            )]),
        )]),
        );
  }
}
