// // import 'package:flutter/material.dart';
// // import 'package:firebase_core/firebase_core.dart';
// // import 'View/Homescreen.dart';
// // import 'firebase_options.dart';
// // import 'package:flutter/material.dart';
// // import 'package:firebase_core/firebase_core.dart';
// // import 'firebase_options.dart';

// // // void main() {
// // //   WidgetsFlutterBinding.ensureInitialized();
// // //   _initializeFirebase();
// // //   runApp(const MyApp());
// // // }

// // void main() async {
// //   WidgetsFlutterBinding.ensureInitialized();
// //   await Firebase.initializeApp();
// //   runApp(MyApp());
// // }

// // late Size mq;

// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       debugShowCheckedModeBanner: false,
// //       home: Homescreen(),
// //       theme: ThemeData(fontFamily: 'mainFont'),
// //     );
// //   }
// // }

// // _initializeFirebase() async {
// //   try {
// //     await Firebase.initializeApp(
// //       options: DefaultFirebaseOptions.currentPlatform,
// //     );
// //   } catch (e) {
// //     print('Error initializing Firebase: $e');
// //   }
// // }

// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import 'View/Homescreen.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();

//   runApp(
//     ChangeNotifierProvider(
//       create: (context) => AdvertisementProvider(),
//       child: const MyApp(),
//     ),
//   );
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: const Homescreen(),
//       theme: ThemeData(fontFamily: 'mainFont'),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

import 'View/auth.dart'; // Replace with your home screen

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AuthManager(),
      child: MaterialApp(
        title: 'Flutter Firebase Auth',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: AuthScreen(),
      ),
    );
  }
}
