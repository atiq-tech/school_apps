import 'package:flutter/material.dart';
import 'package:school_app/authentication/login_page.dart';
import 'package:school_app/card_screen/profile_update_screen.dart';
import 'package:school_app/card_screen/search_screen.dart';
import 'package:school_app/drawer_section/drawer_menu.dart';
import 'package:school_app/home_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    SearchScreen(),
    ProfileUpdateScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        leading: GestureDetector(
            onTap: (){
              scaffoldKey.currentState?.openDrawer();
            },
            child: Icon(Icons.menu,color: Colors.white,size: 30,)),
        backgroundColor: Colors.deepPurple.shade900,
        title: Text("School Apps",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w800,
          ),),centerTitle: true,
        actions: [
          GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
              },
              child: Icon(Icons.account_circle,size: 30,color: Colors.white,)),
          SizedBox(width: 10.0,)
        ],
      ),
      drawer: DrawerDemoPage(
        name: "",
        phon: "",
        photo: "",
        addreess: "",
      ),
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.indigo,
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
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),

    );
  }
}
