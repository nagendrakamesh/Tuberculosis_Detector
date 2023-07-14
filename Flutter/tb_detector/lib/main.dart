// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
//
// // import 'package:tb_detection/otp.dart';
// // import 'package:tb_detection/phone.dart';
//
// import 'home.dart';
// import 'home2.dart';
// // import 'login.dart';
// // import 'register.dart';
//
// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   // await Firebase.initializeApp();
//   // await Firebase.initializeApp(
//   //     name: 'tb-detection',
//   //     options: const FirebaseOptions(
//   //         apiKey: "AIzaSyDx3sh3oCkfB2dWR8x7REgWE1cvileW4_0",
//   //         appId: "1:1074021672220:android:c34b9b30f3990707c686d9",
//   //         messagingSenderId: "1074021672220",
//   //         projectId: "tb-detection-95c11"));
//
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     initialRoute: 'home',
//     routes: {
//       'home': (context) => MyHome(),
//     },
//   ));
// }



import 'package:flutter/material.dart';

import 'home.dart';
// import 'home_gt.dart';

void main() => runApp(Picker());

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
      home: MyHome(),
    );
  }
}