import 'package:detect_tb_with_ground_truth/median.dart';
import 'package:detect_tb_with_ground_truth/urban.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'Auth/login.dart';
import 'Auth/otp.dart';
import 'Auth/phone.dart';
import 'Auth/register.dart';
import 'home.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  await Firebase.initializeApp(
      name: 'detect_tb_with_ground_truth',
      options: const FirebaseOptions(
          apiKey: "AIzaSyCL07riSuW2SK0RlKJapEFuhwIj_AxQh-A",
          appId: "1:114643801690:android:05a8f0574381d1483eea63",
          messagingSenderId: "114643801690",
          projectId: "tbdetector-acf9c"));
  runApp(Picker());
}

class Picker extends StatefulWidget {
  const Picker({super.key});

  @override
  State<Picker> createState() => _PickerState();
}

class _PickerState extends State<Picker> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: MyHome(),
      initialRoute: 'login',
      routes: {
        'login': (context) => LoginPage(),
        'register': (context) => RegisterPage(),
        'home': (context) => MyHome(),
        'phone': (context) => MyPhone(),
        'otp': (context) => MyOtp(),
        'urban' : (context) => Urban(),
        'median' : (context) => Median(),
      },
    );
  }
}