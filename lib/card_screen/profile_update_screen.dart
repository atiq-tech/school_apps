import 'package:flutter/material.dart';

class ProfileUpdateScreen extends StatefulWidget {
  const ProfileUpdateScreen({Key? key}) : super(key: key);

  @override
  State<ProfileUpdateScreen> createState() => _ProfileUpdateScreenState();
}

class _ProfileUpdateScreenState extends State<ProfileUpdateScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
    child: Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(children: [
        SizedBox(height: 5.0),
        Row(
          children: [
            SizedBox(width: 10.0),
            InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back,color: Colors.black,size: 20,)),
            SizedBox(width: 100.0),
            Text("Guardian Profile",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ],),
    ),
    );
  }
}
