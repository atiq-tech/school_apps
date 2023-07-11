
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
import 'package:school_app/drawer_section/custom_list_tile.dart';

class DrawerDemoPage extends StatelessWidget {
  DrawerDemoPage({Key? key,required this.addreess,required  this.name,required  this.phon,required  this.photo }) : super(key: key);
  String ? name,phon,photo ,addreess;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        scrollDirection: Axis.vertical,
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          Container(
            //margin: EdgeInsets.only(top: 20),
            height: 110,
            width: double.infinity,
            color: Colors.deepPurple.shade900,
            padding: EdgeInsets.only(left: 10.0,top: 15.0),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100)),
                    // margin: EdgeInsets.only(
                    //   left: 12,
                    //   right: 13,
                    // ),
                    child: CircleAvatar(
                      radius: 35,
                       backgroundImage: NetworkImage("https://png.pngtree.com/png-clipart/20211017/original/pngtree-school-logo-png-image_6851480.png"),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 100,
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ListTile(
                          title: Text(
                           "School Apps",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          subtitle: Text(
                            "School management apps",
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Custom_List_Tile(icon: Icons.home, icon_name: "Home Page")),
          Divider(height: 1.0,thickness: 1.0,),
          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => TutionFeeStatement(),));
              },
              child: Custom_List_Tile(icon: Icons.feed_outlined, icon_name: "Tution fee Statement")),
          Divider(height: 1.0,thickness: 1.0,),
          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => TutionFeeReceipt(),));
              },
              child: Custom_List_Tile(icon: Icons.monetization_on_outlined, icon_name: "Tution fee Receipt")),
          Divider(height: 1.0,thickness: 1.0,),
          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>ResultInfoScreen(),));
              },
              child: Custom_List_Tile(icon: Icons.receipt_long_sharp, icon_name: "Result Information")),
          Divider(height: 1.0,thickness: 1.0,),
          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ChildrenListScreen(),));
              },
              child: Custom_List_Tile(icon: Icons.child_care_sharp, icon_name: "Children List")),
          Divider(height: 1.0,thickness: 1.0,),
          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => NoticeInfoScreen(),));
              },
              child: Custom_List_Tile(icon: Icons.list_alt_outlined, icon_name: "Notice & Information")),
          Divider(height: 1.0,thickness: 1.0,),
          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileUpdateScreen(),));
              },
              child: Custom_List_Tile(icon: Icons.account_circle_outlined, icon_name: "Profile Update")),
          Divider(height: 1.0,thickness: 1.0,),
          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => MessageToAdminScreen(),));
              },
              child: Custom_List_Tile(icon: Icons.message_outlined, icon_name: "Message to Admin")),
          Divider(height: 1.0,thickness: 1.0,),
          InkWell(
              onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context) => ContactInfoScreen(),));
              },
              child: Custom_List_Tile(icon: Icons.contact_phone_outlined, icon_name: "Contact Information")),
          Divider(height: 1.0,thickness: 1.0,),
          InkWell(
              onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context) => BranchInfoScreen(),));
              },
              child: Custom_List_Tile(icon: Icons.library_add, icon_name: "Branch Information")),
          Divider(height: 1.0,thickness: 1.0,),
          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => UsefullInfoScreen(),));
              },
              child: Custom_List_Tile(icon: Icons.light_sharp, icon_name: "Usefull Information")),
          Divider(height: 1.0,thickness: 1.0,),
          InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
              },
              child: Custom_List_Tile(icon: Icons.logout_outlined, icon_name: "Log Out")),
          Divider(height: 1.0,thickness: 1.0,),

        ],
      ),
    );
  }
}
class TextStylee{
  TextStyle MyTextStyle=GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    //letterSpacing: 1,
    color: Colors.black,
  ) ;
}

