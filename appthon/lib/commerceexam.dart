import 'package:flutter/material.dart';
import 'package:flutter_bullet_list/flutter_bullet_list.dart';
class exam1 extends StatefulWidget {
  const exam1({super.key});

  @override
  State<exam1> createState() => _exam1State();
}

class _exam1State extends State<exam1> {
  final List<ListItemModel> nat=[
    ListItemModel(label: "Symbiosis Entrance Test (SET)"),
    ListItemModel(label: "National Entrance Examination in Design (NEED)"),
    ListItemModel(label: "Common Proficiency Test (CPT)"),
    ListItemModel(label: "CA Foundation"),
    ListItemModel(label: "National Talent Search Exam (NTSE)"),
    ListItemModel(label: "National Institute of Fashion Technology (NIFT) Entrance Exam:"),
  ];
  final List<ListItemModel> state=[
    ListItemModel(label: "State-Specific CA Entrance Exams"),
    ListItemModel(label: "Maharashtra Common Entrance Test (MH CET)"),
    ListItemModel(label: "Gujarat Common Entrance Test (GUJCET)"),
    ListItemModel(label: "Karnataka Common Entrance Test (KCET)"),
    ListItemModel(label: "West Bengal : WBJEE (WEST BENGAL JOINT ENTRANCE EXAMINATION)"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Entrance Exams",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),)),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: [Colors.blueGrey,Colors.black]
              )
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              SizedBox(height: 20,),
              Center(
                child: Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(

                          colors: [Colors.black,Colors.blueGrey]
                      )
                  ),
                  child: Center(child: Text("National Level",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),)),
                ),
              ),
              SizedBox(height: 20,),
              FlutterBulletList(spaceBetweenItem:15,data: nat,bulletType: BulletType.square,bulletSize: 2,textStyle: TextStyle(fontSize: 20),),
              SizedBox(height: 20,),
              Center(
                child: Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(

                          colors: [Colors.blueGrey,Colors.black,]
                      )
                  ),
                  child: Center(child: Text("State Level",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),)),
                ),
              ),
              SizedBox(height: 20,),
              FlutterBulletList(spaceBetweenItem:15,data: state,bulletType: BulletType.square,bulletSize: 2,textStyle: TextStyle(fontSize: 20),),
            ],
          ),
        ),
      ),
    );
  }
}
