import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_app/home_page.dart';
import 'package:school_app/main_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
 final TextEditingController usernameController = TextEditingController();
 final TextEditingController passwordController = TextEditingController();
 final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.indigo,
        padding: EdgeInsets.only(top: 60.0),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Card(child: Image.network("https://png.pngtree.com/png-clipart/20211017/original/pngtree-school-logo-png-image_6851480.png", width:160,
            height:160,
            fit: BoxFit.cover,),),
            Text("Hi Student !",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.w800,
              ),),
          Text("Welcome to our school\nPlease login your account",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),),
          SizedBox(height: 10,),
          Expanded(
            flex: 2,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.circular(30.0))),
              child: SingleChildScrollView(
                child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Username',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.blue[50],
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: usernameController,
                            style:
                            TextStyle(fontSize: 16, color: Colors.black54),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.phone,
                                size: 20,
                                color: Colors.black54,
                              ),
                              hintText: 'Username',
                              hintStyle: TextStyle(color: Colors.black54),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        const Text(
                          'Password',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 15),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.blue[50],
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: TextFormField(
                            controller: passwordController,
                            style:
                            TextStyle(fontSize: 16, color: Colors.black54),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.lock,
                                size: 20,
                                color: Colors.black54,
                              ),
                              hintText: 'Password',
                              hintStyle: TextStyle(color: Colors.black54),
                            ),
                          ),
                        ),
                        const SizedBox(height: 35),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MainScreen(),
                                ));
                          },
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.indigo,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.blue.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 8,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: const Center(
                              child: Text(
                                ' Log In',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  letterSpacing: 1,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Center(
                          child: Row(
                            children: [
                              Text(
                                'Create a new account ',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //       builder: (context) => SignUpPage(),
                                  //     ));
                                },
                                child: Text(
                                  'Sign up',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Text(
                                ' or ',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Text(
                          'Forget Password?',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 20),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        //   children: [
                        //     GestureDetector(
                        //       onTap: () {},
                        //       child: Container(
                        //         width: 60,
                        //         height: 60,
                        //         padding: const EdgeInsets.all(5),
                        //         decoration: BoxDecoration(
                        //           borderRadius: BorderRadius.circular(15),
                        //           color: Colors.white38,
                        //         ),
                        //         child: Image.asset('LiginImag/google.png'),
                        //       ),
                        //     ),
                        //     const SizedBox(width: 50),
                        //     GestureDetector(
                        //       onTap: () {},
                        //       child: Container(
                        //         width: 60,
                        //         height: 60,
                        //         padding: const EdgeInsets.all(5),
                        //         decoration: BoxDecoration(
                        //           borderRadius: BorderRadius.circular(15),
                        //           color: Colors.white38,
                        //         ),
                        //         child: Image.asset('LiginImag/facebook.png'),
                        //       ),
                        //     ),
                        //   ],
                        // ),
                      ],
                    ),
                  ),
              ),

              ),
            ),

        ],),
      ),
    );

  }
}
