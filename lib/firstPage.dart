import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_task/second.dart';

class NewTask extends StatefulWidget {
  @override
  _NewTaskState createState() => _NewTaskState();
}

class _NewTaskState extends State<NewTask> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.menu,
                    color: Colors.black,
                    size: 40,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'images/boyicon.png',
                    width: 40,
                  ),
                )
              ],
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  Row(
                    children: [
                      Text(
                        'Hello,John!',
                        style: TextStyle(
                            fontSize: 50, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Have a nice day!',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          flex: 5,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(8),
                                hintText: 'Search',
                                fillColor: Colors.grey[300],
                                filled: true,
                                suffixIcon: Icon(Icons.search),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                hintStyle: TextStyle(color: Colors.black),
                              ),
                            ),
                          )),
                      Expanded(
                        flex: 1,
                        child: Container(margin: EdgeInsets.only(right: 15),
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.grey[350],
                              borderRadius: BorderRadius.circular(17)),
                          child: Icon(Icons.settings),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18)
                        ),
                        child: Container(
                          height: 35,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(13.0),
                                child: Icon(
                                  Icons.circle,
                                  size: 10,
                                  color: Colors.red,
                                ),
                              ),
                              Center(child: Text('My Task'))
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 35,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(child: Text('My Task')),
                      ),
                      Container(
                        height: 35,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(child: Text('My Task')),
                      ),
                    ],
                  )
                ])),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Container(
                      height: 200,
                      width: 160,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  child: Icon(
                                    Icons.person_outline_rounded,
                                    color: Colors.white,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.blue[900],
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                              Text(
                                'Project B',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                  'Front End\n'
                                      'Development',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                          SizedBox(
                            height: 35,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('September 2020',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ))
                            ],
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blue[700],
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  child: Icon(
                                    Icons.person_outline_rounded,
                                    color: Colors.white,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.blue[600],
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ),
                              Text(
                                'Project C',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Row(

                              children: [
                                Text(
                                    'Graphic\n'
                                        'Designer',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(

                              children: [
                                Text('Octomber 2020',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ))
                              ],
                            ),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blue[400],
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Text(
                    "Process",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Card(

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
                          color: Colors.redAccent,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      title: Text("Project Name",style: TextStyle(fontWeight: FontWeight.bold),),
                      subtitle: Text('2 days ago'),
                      trailing: Icon(Icons.more_vert),
                      onTap: (){
                        Get.to(SecondPage());
                      },
                    ),
                  )),
            )
          ]),
        ),
        bottomNavigationBar: BottomNavigationBar(elevation: 0,
          type:BottomNavigationBarType.fixed,
          iconSize: 25,
          currentIndex: 0,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(
              Icons.home_filled,
              color: Colors.blue,
            ),
              title: Text(
                '',
                style: TextStyle(color: Colors.green),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_today_outlined,
                color: Colors.grey,
              ),
              title: Text(
                '',
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications_none,
                color: Colors.grey,
              ),
              title: Text(
                  ''
              ),
            ),

            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
              title: Text(
                '',

              ),
            ),



          ],
        ),
      ),
    );
  }
}