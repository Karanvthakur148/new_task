import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ThirdPage extends StatefulWidget {
  // const ThirdPage({Key? key}) : super(key: key);

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();
  TextEditingController controller4 = TextEditingController();
  TextEditingController controller5 = TextEditingController();
  final List myItem = ['Marketing','Meeting','Dev','Mobile','UI Design','HTML','Graphic Design','Android App','IOS App','Megneto','SEO'];

  @override
  void initState() {
    // TODO: implement initState
    controller1.text = 'UI Design';
    controller2.text = 'Tuesday, 23 Sep 2020';
    controller4.text = '1:00     PM';
    controller5.text = '3:00     PM';
    // controller5.text = 'Tuesday, 23/ Sep 2020';
    controller3.text = 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.';

    super.initState();

  }
  bool _selected1 = false;
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
            child: Padding(
              padding: const EdgeInsets.only(left:8.0),
              child: Icon(Icons.arrow_back,color: Colors.black,),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right:24.0),
              child: Icon(Icons.search,color: Colors.black,),
            )
          ],
        ),
        body:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  // padding: EdgeInsets.symmetric(horizontal: 10),
                  width: double.infinity,
                  // height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: 'New Task',
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
                          color: Colors.deepPurple.shade50,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:10.0),
                  child: TextField(
                    controller: controller1,
                    decoration: InputDecoration(
                        labelText: 'Title'
                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:10.0),
                  child: TextField(
                    controller: controller2,
                    decoration: InputDecoration(
                        labelText: 'Date'
                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:10.0),              child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: TextField(
                        controller: controller4,
                        decoration: InputDecoration(
                            labelText: 'Start Time'
                        ),

                      ),
                    ),
                    SizedBox(width: 30,),
                    Expanded(
                      flex: 1,
                      child: TextField(
                        controller: controller5,
                        decoration: InputDecoration(
                            labelText: 'End Time'
                        ),

                      ),
                    ),
                  ],
                ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:10.0),              child: TextField(
                  controller: controller3,
                  maxLines: 2,
                  decoration: InputDecoration(
                      labelText: 'Description'
                  ),

                ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  height: Get.height/3.3,
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 150,
                          childAspectRatio: 2.5,
                          crossAxisSpacing: 2,
                          mainAxisSpacing: 20),
                      itemCount: myItem.length,
                      itemBuilder: (BuildContext ctx, index) {
                        return    ChoiceChip(
                            selected: _selected1,
                            label: Text(myItem[index]),
                            padding: EdgeInsets.only(top: 15,right: 10,bottom: 15,left: 10),
                            labelStyle: TextStyle(fontSize: 14),
                            backgroundColor: index!=4?Colors.indigo.shade100:Colors.pinkAccent.shade100,
                            selectedColor: Color(0xffE6EEFF),
                            onSelected: (bool selected) {
                              setState(() {
                                _selected1 = !_selected1;
                              });
                            }
                        );
                      }),
                ),

                Padding(
                  padding: const EdgeInsets.only(top:5.0),
                  child: customBtn('Create New Task',230.0,(){},Colors.indigo),
                ),
              ],
            ),
          ),
        )
    );
  }
  Widget customBtn(
      String text,
      width,
      onPress,
      Color color) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(bottom: 40),
        child: Center(
            child: Text(
              text,
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            )),
        width: width,
        //Get.width*0.9,
        height: Get.height * 0.06,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(18),
        ),
      ),
    );
  }
}