import 'package:flutter/material.dart';

class BranchInfoScreen extends StatefulWidget {
  const BranchInfoScreen({Key? key}) : super(key: key);

  @override
  State<BranchInfoScreen> createState() => _BranchInfoScreenState();
}

class _BranchInfoScreenState extends State<BranchInfoScreen> {
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
        title: Text("Branch Information",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w800,
          ),),centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        padding:  EdgeInsets.all(10.0),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Text("Our Branch",style: TextStyle(color: Colors.black,fontSize: 25.0,fontWeight: FontWeight.w800,),),
            Text("Corporate Office Address :",style: TextStyle(color: Colors.black,fontSize: 22.0,fontWeight: FontWeight.w600,),),
            Text("Link-Up Technology Ltd.",style: TextStyle(color: Colors.black45,fontSize: 20.0,fontWeight: FontWeight.w600,),),
            Card(
              color: Colors.cyanAccent,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text("Plot: 16 (3rd Floor)Road- 01, Behind Shah Ali Plaza Mirpur-10, Dhaka-1216 Bangladesh\nPhone : +88 01911-978897 \nEmail Address : mail@Linktechbd.com\nWebsite : www.Linktechbd.com"
                  ,style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Text("Office-2 Address :",style: TextStyle(color: Colors.black,fontSize: 22.0,fontWeight: FontWeight.w600,),),
            Text("Link-Up Technology Ltd.",style: TextStyle(color: Colors.black45,fontSize: 20.0,fontWeight: FontWeight.w600,),),
            Card(
              color: Colors.cyanAccent,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text("187 - East Kazi Para,Mirpur, Dhaka-1216 Bangladesh\nPhone : +88 01981-800200",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400,

                  ),
                  textAlign:TextAlign.start,
                ),
              ),
            )
          ]
          ,),
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
