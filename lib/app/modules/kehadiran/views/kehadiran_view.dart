import 'package:absensi/app/modules/dashboard/views/dashboard_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/kehadiran_controller.dart';

class KehadiranView extends GetView<KehadiranController> {
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
       body: ListView( 
         padding: const EdgeInsets.symmetric(horizontal: 25),
         children: [
           Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               CardFolder(
                 image: Image.asset("assets/icons/folder-AC4040.png"),
                 title: "IZIN",
                 icon: Icon(
                   Icons.arrow_downward_outlined),
                 color: Color(0xFFAC4040),
               ),
                CardFolder(
                 image: Image.asset("assets/icons/folder-415EB6.png"),
                 title: "SAKIT",
                 icon: Icon(
                   Icons.arrow_downward_outlined),
                 color: Color.fromARGB(255, 66, 78, 189),
               ),
             ],
           )
        ],
       ),
    );
  }
}

class CardFolder extends StatelessWidget {
  CardFolder({
    Key? key,
    required this.title,
    required this.color,
    required this.image,
    required this.icon,

  }) : super(key: key);

    final String title;    
    final Color color;
    final Image image;
    final Icon icon;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7),
      width: Get.width * 0.4,
      height: 110,
      decoration: BoxDecoration(
         color: color.withOpacity(0.2),
         borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          image,
          SizedBox(height: 10),
          Text(title, style: TextStyle(
            fontWeight: FontWeight.w500,
            color: color,
            fontSize: 18,
          ),),
          SizedBox(height: 5),

          icon ,
        ],
      ),
    );
  }
}
