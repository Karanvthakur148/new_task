import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_task/third.dart';


class SecondPage extends StatelessWidget {
  // const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
            onTap: (){
              Get.back();
            },
            child: Icon(Icons.arrow_back,color: Colors.black,)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(Icons.search,color: Colors.black,),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                //adding: EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'Sep 2020',
                        style: TextStyle(fontSize: 35,color: Colors.black,fontWeight: FontWeight.w900),
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      child: Icon(
                        Icons.calendar_today_outlined,
                        color: Colors.purpleAccent,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.indigo.shade100,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  color: Colors.blue.shade600,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text('Sun',style: TextStyle(fontSize: 12,color: Colors.white60,),),
                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                text: '20',
                                style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w900),
                              ),
                            ),

                          ],

                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12,vertical:35 ),
                            child: Column(
                              children: [
                                Text('Mon',style: TextStyle(fontSize: 12,color: Colors.black,),),
                                RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    text: '21',
                                    style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w900),
                                  ),
                                ),

                              ],

                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Text('Tue',style: TextStyle(fontSize: 12,color: Colors.white60,),),
                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                text: '22',
                                style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w900),
                              ),
                            ),

                          ],

                        ),
                        Column(
                          children: [
                            Text('Web',style: TextStyle(fontSize: 12,color: Colors.white60,),),
                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                text: '23',
                                style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w900),
                              ),
                            ),

                          ],

                        ),
                        Column(
                          children: [
                            Text('Thu',style: TextStyle(fontSize: 12,color: Colors.white60,),),
                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                text: '24',
                                style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w900),
                              ),
                            ),

                          ],

                        ),
                        Column(
                          children: [
                            Text('Fri',style: TextStyle(fontSize: 12,color: Colors.white60,),),
                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                text: '25',
                                style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w900),
                              ),
                            ),

                          ],

                        ),
                        Column(
                          children: [
                            Text('Sat',style: TextStyle(fontSize: 12,color: Colors.white60,),),
                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                text: '26',
                                style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w900),
                              ),
                            ),

                          ],

                        ),


                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Tasks',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  Icon(Icons.more_horiz,size: 22,),
                ],
              ),
              SizedBox(height: 15,),
              Column(
                children: [
                  Card(
                      elevation: 25,
                      shape:  RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35.0),
                      ),
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: ListTile(
                          leading: Container(
                            width: 50,
                            height: 50,
                            child: Icon(
                              Icons.insert_drive_file_rounded,
                              color: Colors.purpleAccent,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.indigo.shade100,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          title: Text("Project Name",style: TextStyle(fontWeight: FontWeight.bold),),
                          subtitle: Text('2 days ago'),
                          trailing: Icon(Icons.more_vert),
                        ),
                      )),
                  SizedBox(height: 15,),
                  Card(
                      elevation: 0,
                      shape:  RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35.0),
                      ),
                      color: Colors.indigo.shade100,
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: ListTile(
                          leading: Container(
                            width: 50,
                            height: 50,
                            child: Icon(
                              Icons.call,
                              color: Colors.purpleAccent,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          title: Text("Client Call",style: TextStyle(fontWeight: FontWeight.bold)),
                          subtitle: Text('2 days ago'),
                          trailing: Icon(Icons.more_vert),
                        ),
                      )),
                  SizedBox(height: 15,),
                  Card(
                      elevation: 0,
                      shape:  RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35.0),
                      ),
                      color: Colors.indigo.shade100,
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: ListTile(
                          leading: Container(
                            width: 50,
                            height: 50,
                            child: Icon(
                              Icons.people_outline,
                              color: Colors.purpleAccent,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          title: Text("Team Meeting",style: TextStyle(fontWeight: FontWeight.bold)),
                          subtitle: Text('2 days ago'),
                          trailing: Icon(Icons.more_vert),
                        ),
                      )),
                  SizedBox(height: 15,),
                  Card(
                      elevation: 0,
                      shape:  RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35.0),
                      ),
                      color: Colors.indigo.shade100,
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: ListTile(
                          leading: Container(
                            width: 50,
                            height: 50,
                            child: Icon(
                              Icons.insert_drive_file_rounded,
                              color: Colors.purpleAccent,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          title: Text("Project Name",style: TextStyle(fontWeight: FontWeight.bold)),
                          subtitle: Text('2 days ago'),
                          trailing: Icon(Icons.more_vert),
                        ),
                      )),
                  SizedBox(height: 15,),
                  Card(
                      elevation: 0,
                      shape:  RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35.0),
                      ),
                      color: Colors.indigo.shade100,
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: ListTile(
                          leading: Container(
                            width: 50,
                            height: 50,
                            child: Icon(
                              Icons.insert_drive_file_rounded,
                              color: Colors.purpleAccent,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          title: Text("Project Name"),
                          subtitle: Text('2 days ago'),
                          trailing: Icon(Icons.more_vert),
                        ),
                      )),
                  SizedBox(height: 15,),
                ],
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 15,

        backgroundColor: Colors.white,
        onPressed: (){
             Get.to(ThirdPage());
        },
        child: Icon(Icons.add,color: Colors.blue,),
      ),floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}