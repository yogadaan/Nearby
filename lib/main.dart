import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nearby/Screens/homePage.dart';
import 'package:nearby/Screens/profilePage.dart';
import 'Screens/Signup_Page.dart';
import 'Screens/login_Page.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      routes: {
        Login.id:(context) => Login(),
        Home.id:(context)=> Home(),
        SignUp.id:(context)=>SignUp(),
        ProfilePage.id:(context)=>ProfilePage(),
      },
    );
  }
}
//