import 'package:appthon/commerceexam.dart';
import 'package:flutter/material.dart';
import 'bcom.dart';
import 'bfin.dart';
import 'chartedacc.dart';
class commerce extends StatefulWidget {
  const commerce({super.key});

  @override
  State<commerce> createState() => _commerceState();
}

class _commerceState extends State<commerce> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Commerce",style: TextStyle(fontSize: 25,color: Colors.white),)),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: [Colors.deepPurple]
              )
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                color: Colors.blue,
                elevation: 10,
                shadowColor: Colors.black87,
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>bcom()));
                  },
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          ClipRRect(borderRadius: BorderRadius.circular(20),child: Container(child: Image(image: AssetImage('assets/bcom.jpg')))),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Text("B.Com",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                              SizedBox(width: 20,),
                              Icon(Icons.favorite_outlined,color: Colors.black,)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  elevation: 10,
                  shadowColor: Colors.black,
                  color: Colors.green,
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>bfin()));
                    },
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            ClipRRect(borderRadius: BorderRadius.circular(20),child: Container(child: Image(image: NetworkImage("https://eassests.s3.amazonaws.com/article-images/finance-bachelor.jpg")))),
                            SizedBox(height: 20,),
                            Row(
                              children: [
                                Text("B.Fin",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                SizedBox(width: 20,),
                                Icon(Icons.favorite_outlined,color: Colors.black,)
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                elevation: 10,
                shadowColor: Colors.black87,
                color: Colors.yellow,
                child: InkWell(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>ca()));
                  },
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          ClipRRect(borderRadius: BorderRadius.circular(20),child: Container(child: Image(image: NetworkImage("https://wallpapercave.com/wp/wp7149560.jpg")))),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Text("Chartered Accountancy (CA)",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                              SizedBox(width: 20,),
                              Icon(Icons.favorite_outlined,color: Colors.black,)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                elevation: 10,
                shadowColor: Colors.black87,
                color: Colors.pinkAccent,
                child: InkWell(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>exam1()));
                  },
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          ClipRRect(borderRadius: BorderRadius.circular(20),child: Container(child: Image(image: NetworkImage("https://medhigh.com/wp-content/uploads/2015/12/02-600x-820x400.jpg")))),
                          SizedBox(height: 20,),
                          Text("Common Entrance Exams",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
