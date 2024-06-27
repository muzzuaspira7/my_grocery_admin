// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;
//   final FirebaseStorage _storage = FirebaseStorage.instance;
//   final ImagePicker _imagePicker = ImagePicker();
//   late File _imageFile;

//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.green[600],
//           title: Text(
//             'Grocery Shop',
//             style: GoogleFonts.lato(
//                 textStyle: Theme.of(context).textTheme.displayLarge,
//                 fontSize: 20,
//                 fontWeight: FontWeight.w700,
//                 fontStyle: FontStyle.italic,
//                 color: Colors.white),
//           ),
//           actions: <Widget>[
//             IconButton(
//               icon: Icon(Icons.exit_to_app),
//               onPressed: () async {
//                 await _auth.signOut();
//                 Navigator.of(context).pop();
//               },
//             ),
//           ],
//         ),
//         body: Container(
//           width: double.infinity,
//           color: Colors.green[50],
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text('Add Your Products',
//                     style: GoogleFonts.lato(
//                       textStyle: Theme.of(context).textTheme.displayLarge,
//                       fontSize: 20,
//                       fontWeight: FontWeight.w700,
//                       fontStyle: FontStyle.italic,
//                     )),

//                 /// Grid View
//                 GridView.builder(

//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                       crossAxisCount: 3),
//                   itemBuilder: (context, index) {
//                     return Card(
//                       child: Text('Brand'),
//                     );
//                   },
//                 )
//               ],
//             ),
//           ),
//         ));
//   }
// }

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseStorage _storage = FirebaseStorage.instance;
  final ImagePicker _imagePicker = ImagePicker();
  late File _imageFile;

  List productList = [
    'Type & Brands',
    'Ads',
    'Offers',
    'Catogory',
    'None',
    'None',
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[600],
        title: Text(
          'Grocery Shop',
          style: GoogleFonts.lato(
            textStyle: Theme.of(context).textTheme.headline6!.copyWith(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () async {
              await _auth.signOut();
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        color: Colors.green[50],
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                'Add Your Products',
                style: GoogleFonts.lato(
                  textStyle: Theme.of(context).textTheme.headline6!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Colors.black87,
                      ),
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: 6, // Replace with your item count
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 8.0,
                ),
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.green[100],
                    elevation: 5.0,
                    child: Center(
                      child: Text(
                        productList[index],
                        style: GoogleFonts.lato(
                          textStyle:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                  ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
