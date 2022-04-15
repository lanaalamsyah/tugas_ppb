import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../dashboard/views/dashboard_view.dart';
import '../controllers/hadir_controller.dart';

class HadirView extends GetView<HadirController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        leading: IconButton(
          onPressed: (){
              Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>  DashboardView())
                    );
          }, 
          icon: Icon(
            Icons.arrow_back_ios, 
          color: Colors.black)
        ),
        title: Text(
          'My Profil',
          style: TextStyle(
            color: Colors.black),
            ),
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: Icon(
              Icons.more_horiz, color: Colors.black)
              )
        ],
        centerTitle: true,
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child:Column(
        children:  [  
              Icon(
                Icons.location_on
                ),
                Text (
               'Gg.H.Yasin, Desa Karangampel Kidul, Blok Dukulab, Rt 22 / Rw 05, Kode pos (45283) Kec.Karangampel, Kab.Indramayu, Jawa Barat'  
              ), 
            Container (
              child: Icon(Icons.add_a_photo),
              margin: EdgeInsets.only(top: 20, bottom: 10),
              width: 300,
              height: 370,
              color: Colors.grey[200],
            )    
        ],) 
      ),
    );
  }
}
