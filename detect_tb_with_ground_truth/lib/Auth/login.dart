// import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    String email = "";
    String pass = "";
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("img/login_bg.png"), fit: BoxFit.cover)),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(children: [
              Container(
                padding: EdgeInsets.only(left: 35, top: 100),
                child: Text(
                  'Welcome Back!',
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 33,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.43,
                      right: 35,
                      left: 35),
                  child: Column(
                    children: [
                      TextField(
                        onChanged: (value) => {email = value},
                        decoration: InputDecoration(
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            hintText: 'Email',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      TextField(
                        onChanged: (value) => {pass = value},
                        obscureText: true,
                        decoration: InputDecoration(
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            hintText: 'Password',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                      SizedBox(
                        height: 27,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Sign In ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 27,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 1)),
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.black,
                            child: IconButton(
                              color: Colors.white,
                              onPressed: () async {
                                try {
                                  final credential = await FirebaseAuth.instance
                                      .signInWithEmailAndPassword(
                                          email: email, password: pass);
                                  Navigator.pushNamed(context, 'phone');
                                } on FirebaseAuthException catch (e) {
                                  if (e.code == 'user-not-found') {
                                    print('No user found for that email.');
                                  } else if (e.code == 'wrong-password') {
                                    print(
                                        'Wrong password provided for that user.');
                                  }
                                }
                              },
                              icon: Icon(Icons.arrow_forward),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 85,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, 'register');
                              },
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              )),
                          // TextButton(
                          //     onPressed: () {},
                          //     child: Text(
                          //       'Forgot Password',
                          //       style: TextStyle(
                          //           decoration: TextDecoration.underline,
                          //           fontSize: 22,
                          //           fontWeight: FontWeight.w600,
                          //           color: Colors.white),
                          //     )),
                        ],
                      ),
                      Container(height: 95,),
                      SizedBox(
                        child: IconButton(
                          alignment: Alignment.bottomLeft,
                            onPressed: () {
                              Navigator.pushNamed(context, 'median');
                            },
                            icon: Icon(Icons.route), color: Colors.deepOrange),

                      )
                    ],
                  ),
                ),
              )
            ])));
  }
}
