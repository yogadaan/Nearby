// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'homePage.dart';
// import 'login_Page.dart';
// import 'package:fluttertoast/fluttertoast.dart';
//
// class SignUp extends StatefulWidget {
//   static String id = 'registration_screen';
//
//   @override
//   _SignUpState createState() => _SignUpState();
// }
//
// class _SignUpState extends State<SignUp> {
//
//
//   // var dbref = FirebaseDatabase.instance.reference().child('users');
//   // final databaseReference = FirebaseDatabase.instance.reference();
//
//   TextEditingController nameTextEditingController = TextEditingController();
//   TextEditingController emailTextEditingController = TextEditingController();
//   TextEditingController passwordTextEditingController = TextEditingController();
//
//   final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
//
//
//   void registerNewUser(BuildContext context) async {
//     try {
//       // final User newUser = (await _firebaseAuth.createUserWithEmailAndPassword(email: emailTextEditingController.text, password: passwordTextEditingController.text)).user;
//
//       final newPerson = await _firebaseAuth.createUserWithEmailAndPassword(email: emailTextEditingController.text, password: passwordTextEditingController.text);
//
//       User? newUser = newPerson.user;
//
//       if (newUser != null) {
//
//         final User newUser = await _firebaseAuth.currentUser!;
//         final userId = newUser.uid;
//         print(userId);
//         displayToastMessage("Account Created!", context);
//
//         Navigator.pushNamedAndRemoveUntil(
//             context, Home.id, (route) => false);
//       }
//     } catch (e) {
//       print(e);
//       displayToastMessage(e.toString(), context);
//     }
//   }
//
//
//
//   void displayToastMessage(String message, BuildContext context) {
//     Fluttertoast.showToast(
//         msg: message,
//         backgroundColor: Colors.grey.withOpacity(0.3),
//         textColor: Colors.white,
//         fontSize: 7);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: true,
//       backgroundColor: Colors.white,
//       body: Center(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'Sign up',
//               style: GoogleFonts.(
//                 GoogleFonts.poppins: GoogleFonts.poppins(
//                   color: Colors.black,
//                   fontSize: 23,
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 23,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 29, vertical: 5),
//               child: TextFormField(
//                 controller: nameTextEditingController,
//                 cursorColor: Colors.grey,
//                 keyboardType: TextInputType.name,
//                 decoration: InputDecoration(
//                   hintText: 'Name',
//                   hintStyle: GoogleFonts.poppins(
//                     GoogleFonts.poppins: GoogleFonts.poppins(
//                         fontSize: 12,
//                         fontWeight: FontWeight.w400,
//                         color: Colors.grey),
//                   ),
//                   contentPadding:
//                   EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.all(Radius.circular(42)),
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(
//                       color: Colors.grey,
//                       width: 1.0,
//                     ),
//                     borderRadius: BorderRadius.all(Radius.circular(42)),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                       borderSide: BorderSide(
//                         color: Colors.grey,
//                         width: 2.0,
//                       ),
//                       borderRadius: BorderRadius.all(Radius.circular(42))),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 29, vertical: 5),
//               child: TextFormField(
//                 controller: emailTextEditingController,
//                 cursorColor: Colors.grey,
//                 keyboardType: TextInputType.emailAddress,
//                 decoration: InputDecoration(
//                   hintText: 'Enter your email address',
//                   hintStyle: GoogleFonts.poppins(
//                     GoogleFonts.poppins: GoogleFonts.poppins(
//                         fontSize: 12,
//                         fontWeight: FontWeight.w400,
//                         color: Colors.grey),
//                   ),
//                   contentPadding:
//                   EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.all(Radius.circular(42)),
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(
//                       color: Colors.grey,
//                       width: 1.0,
//                     ),
//                     borderRadius: BorderRadius.all(Radius.circular(42)),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                       borderSide: BorderSide(
//                         color: Colors.grey,
//                         width: 2.0,
//                       ),
//                       borderRadius: BorderRadius.all(Radius.circular(42))),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 29, vertical: 5),
//               child: TextFormField(
//                 controller: passwordTextEditingController,
//                 cursorColor: Colors.grey,
//                 decoration: InputDecoration(
//                   hintText: 'Enter your Password',
//                   hintStyle: GoogleFonts.poppins(
//                     GoogleFonts.poppins: GoogleFonts.poppins(
//                         fontSize: 12,
//                         fontWeight: FontWeight.w400,
//                         color: Colors.grey),
//                   ),
//                   contentPadding:
//                   EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.all(Radius.circular(42)),
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(
//                       color: Colors.grey,
//                       width: 1.0,
//                     ),
//                     borderRadius: BorderRadius.all(Radius.circular(42)),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                       borderSide: BorderSide(
//                         color: Colors.grey,
//                         width: 2.0,
//                       ),
//                       borderRadius: BorderRadius.all(Radius.circular(42))),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             MaterialButton(
//               height: 49,
//               minWidth: 330,
//               color: Colors.black,
//               elevation: 0,
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(34)),
//               onPressed: () {
//                 if (nameTextEditingController.text.length < 4) {
//                   displayToastMessage(
//                       'Name Should have more than 3 Letters', context);
//                 } else if (!emailTextEditingController.text.contains('@')) {
//                   displayToastMessage('Email Address Not Valid', context);
//                 } else if (passwordTextEditingController.text.length < 7) {
//                   displayToastMessage(
//                       "Password should be more than 6 Characters", context);
//                 }
//                 registerNewUser(context);
//                 print(nameTextEditingController);
//                 print(emailTextEditingController);
//
//               },
//               child: Text(
//                 'Sign up',
//                 style: GoogleFonts.poppins(
//                     GoogleFonts.poppins: GoogleFonts.poppins(
//                         fontWeight: FontWeight.w500,
//                         color: Colors.white,
//                         fontSize: 17)),
//               ),
//             ),
//             TextButton(
//               style: ButtonStyle(
//                 overlayColor: MaterialStateProperty.all(Colors.transparent),
//               ),
//               onPressed: () {
//                 Navigator.pushNamedAndRemoveUntil(
//                     context, Login.id, (route) => false);
//               },
//               child: RichText(
//                 text: TextSpan(
//                     text: 'Already have an account?',
//                     style: GoogleFonts.poppins(
//                         fontWeight: FontWeight.w500,
//                         fontSize: 14,
//                         color: Colors.black),
//                     children: <TextSpan>[
//                       TextSpan(
//                         text: ' Login',
//                         style: GoogleFonts.poppins(
//                             fontWeight: FontWeight.w700,
//                             fontSize: 14,
//                             color: Colors.black),
//                       ),
//                     ]),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }