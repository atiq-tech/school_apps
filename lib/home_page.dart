import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_app/authentication/login_page.dart';
import 'package:school_app/card_screen/branch_info_screen.dart';
import 'package:school_app/card_screen/children_list_screen.dart';
import 'package:school_app/card_screen/contract_info_screen.dart';
import 'package:school_app/card_screen/message_to_admin_screen.dart';
import 'package:school_app/card_screen/notice_info_screen.dart';
import 'package:school_app/card_screen/profile_update_screen.dart';
import 'package:school_app/card_screen/result_info_screen.dart';
import 'package:school_app/card_screen/tution_fee_receipt.dart';
import 'package:school_app/card_screen/tution_fee_statement.dart';
import 'package:school_app/card_screen/usefull_info_screen.dart';
import 'package:school_app/drawer_section/drawer_menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.indigo,
         // padding: EdgeInsets.only(top: 30.0),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(children: [
                    Text("Hi Atiq !",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                      ),),
                    Text("Welcome to our school",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),),
                  ],),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                        border: Border.all(color: Colors.white),
                        image: DecorationImage(
                            image: NetworkImage("https://img.freepik.com/free-photo/front-view-male-student-wearing-black-backpack-holding-copybooks-files-blue-wall_140725-42636.jpg?size=626&ext=jpg&ga=GA1.1.896383550.1688815959&semt=ais",)
                            ,fit: BoxFit.fitHeight),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Divider(height: 1.0,thickness: 0.1,color: Colors.white,),
              SizedBox(height: 10,),
              Container(
                height: MediaQuery.of(context).size.height/10,
                width: MediaQuery.of(context).size.width/2+185,
                decoration: BoxDecoration(
                 // color: Colors.yellow,
                  borderRadius: BorderRadius.circular(10.0),
                  //border: Border.all(color: Colors.white),
                ),
                child: ListView.builder(
                  itemCount: 2,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 110.0,
                      width: MediaQuery.of(context).size.width/3+50,
                      margin: EdgeInsets.only(top: 2.0,bottom: 2.0,left: 5.0,right: 5.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        //border: Border.all(color: Colors.white),
                      ),
                      child: Center(
                          child:index==0? Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Due fee',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                ),),
                              SizedBox(height: 5,),
                              Text('1200.0tk',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),),
                            ],
                          ):Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Paid',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                ),),
                              SizedBox(height: 5,),
                              Text('1000.0tk',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),),
                            ],
                          )
                      ),
                    );
                  },
                )
              ),
              SizedBox(height: 5,),
              Container(
                  height: MediaQuery.of(context).size.height/10,
                  width: MediaQuery.of(context).size.width/2+185,
                  decoration: BoxDecoration(
                    // color: Colors.yellow,
                    borderRadius: BorderRadius.circular(10.0),
                    //border: Border.all(color: Colors.white),
                  ),
                  child: ListView.builder(
                    itemCount: 2,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 110.0,
                        width: MediaQuery.of(context).size.width/3+50,
                        margin: EdgeInsets.only(top: 2.0,bottom: 2.0,left: 5.0,right: 5.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0),
                          //border: Border.all(color: Colors.white),
                        ),
                        child: Center(
                            child:index==0? Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Student Count',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w800,
                                  ),),
                                SizedBox(height: 5,),
                                Text('25',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),),
                              ],
                            ):Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Class Information',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w800,
                                  ),),
                                SizedBox(height: 5,),
                                Text('10th',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),),
                              ],
                            )
                        ),

                      );
                    },
                  )
              ),
              SizedBox(height: 10,),
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.only(top: 10,left: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.circular(30.0))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text("Main Menu:",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                          ),

                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          padding: EdgeInsets.only(right: 10.0,bottom: 15.0,top:5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.circular(30.0))),
                          child: GridView.builder(
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4, // Number of columns in the grid
                              mainAxisSpacing: 5.0, // Spacing between rows
                              crossAxisSpacing: 5.0, // Spacing between columns
                              childAspectRatio: 0.95,
                            ),
                            itemCount: 11, // Total number of items in the grid
                            itemBuilder: (BuildContext context, int index) {
                              // Build each item in the grid
                              return InkWell(
                                onTap: () {
                                  index==0? Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TutionFeeStatement()))
                                      :index==1? Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TutionFeeReceipt()))
                                      :index==2? Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ResultInfoScreen()))
                                      :index==3? Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ChildrenListScreen()))
                                      :index==4? Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NoticeInfoScreen()))
                                      :index==5? Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProfileUpdateScreen()))
                                      :index==6? Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MessageToAdminScreen()))
                                      :index==7? Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ContactInfoScreen()))
                                      :index==8? Navigator.of(context).push(MaterialPageRoute(builder: (context)=>BranchInfoScreen()))
                                      :index==9? Navigator.of(context).push(MaterialPageRoute(builder: (context)=>UsefullInfoScreen()))
                                     :Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginPage()));
                                },

                                child: Card(
                                  elevation: 5,
                                  color: Colors.indigo,
                                  child: Center(
                                    child:index==0? Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.feed_outlined,size: 30,color: Colors.white,),
                                        Text(
                                          'Tution fee Statement',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12.0,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ):index==1?Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.monetization_on_outlined,size: 30,color: Colors.white,),
                                      Text(
                                        'Tution fee Receipt',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12.0,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ):index==2?Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.receipt_long_sharp,size: 30,color: Colors.white,),
                                        Text(
                                          'Result Information',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12.0,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ):index==3?Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.child_care_sharp,size: 30,color: Colors.white,),
                                        Text(
                                          'Children      List',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12.0,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ):index==4?Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.list_alt_outlined,size: 30,color: Colors.white,),
                                        Text(
                                          'Notice & Information',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12.0,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ):index==5?Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.account_circle_outlined,size: 30,color: Colors.white,),
                                        Text(
                                          'Profile Update',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12.0,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ):index==6?Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.message_outlined,size: 30,color: Colors.white,),
                                        Text(
                                          'Message to Admin',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12.0,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ):index==7?Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.contact_phone_outlined,size: 30,color: Colors.white,),
                                        Text(
                                          'Contact Information',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12.0,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ):index==8?Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.library_add,size: 30,color: Colors.white,),
                                        Text(
                                          'Branch Information',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12.0,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ):index==9?Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.light_sharp,size: 30,color: Colors.white,),
                                        Text(
                                          'Usefull Information',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12.0,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ):Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.logout,size: 30,color: Colors.white,),
                                        Text(
                                          'Want to Logout',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12.0,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          )
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],),
        ),
    );

  }
}
