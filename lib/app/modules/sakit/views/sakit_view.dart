import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sakit_controller.dart';

class SakitView extends GetView<SakitController> {
   @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
       elevation: 0,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        leading: IconButton(
          onPressed: (){
      // TextFormField(
      //               decoration: InputDecoration(
      //                 enabledBorder: OutlineInputBorder(
      //                   borderRadius: BorderRadius.circular(20),
      //                   borderSide: BorderSide(),
      //                 ),
      //                 labelText: 'Name *',
      //   )  );
                
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
      ), 
      );
  }}
   Widget BuildContext (context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 120, left: 24, right: 24),
          child: Center(
            child: Column(
              children: [
                Text(
                  'Welcome Back',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 20),
                Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        fillColor: Color(0xffF1F0F5),
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(),
                        ),
                        labelText: 'Name *',
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  