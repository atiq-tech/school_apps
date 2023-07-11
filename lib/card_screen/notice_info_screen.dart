import 'package:flutter/material.dart';

class NoticeInfoScreen extends StatefulWidget {
  const NoticeInfoScreen({Key? key}) : super(key: key);

  @override
  State<NoticeInfoScreen> createState() => _NoticeInfoScreenState();
}

class _NoticeInfoScreenState extends State<NoticeInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back,color: Colors.white,size: 25,)),
        backgroundColor: Colors.deepPurple.shade900,
        title: Text("Notice & Information",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w800,
          ),),centerTitle: true,
      ),
      body: Container(

      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.indigo,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.white,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search,color: Colors.white,),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,color: Colors.white,),
            label: 'Profile',
          ),
        ],
      ),

    );
  }
}
