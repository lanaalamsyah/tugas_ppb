import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/izin_controller.dart';

class IzinView extends GetView<IzinController> {
  @override
  Widget build(context) {
    return Scaffold(
        appBar: AppBar(
       elevation: 0,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        leading: IconButton(
          onPressed: (){
       
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
      body: Stack(children: [
        SizedBox(height: 20,),
        Container(
          child: TextField(
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              icon: Icon(
                Icons.phone,
                color: Colors.black,
              )
            ),
          )
        ),
      ],),
      );
  }}
  
   