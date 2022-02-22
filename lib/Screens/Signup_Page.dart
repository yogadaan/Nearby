import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'homePage.dart';
import 'login_Page.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;


class SignUp extends StatefulWidget {
  static String id = 'registration_screen';

  @override
  _SignUpState createState() => _SignUpState();
}

Future createUser(String email, String uid, String username, String number)async{
  String data = '{"uUID" :"${uid}","userName" : "${username}","phoneNumber" : "${number}","userEmail" : "${email}"}';
  Map <String, String> headers={
    'Content-Type': 'application/json; charset=UTF-8',
  };
  // data=json.encode(data) ;
  final response= await http.post(
    Uri.parse('http://13.232.99.59:3000/yogdaan/createUser'),body: data,headers: headers);

  if (response.statusCode == 200) {
    return jsonDecode(response.body);

  } else {
    // If the server did not return a 201 CREATED response,
    // then throw an exception.
    throw Exception('Failed to create User.');
  }
}

Future sendMail(String email)async{
  String data = '{"userEmail":"$email"}';
  Map <String, String> headers={
    'Content-Type': 'application/json; charset=UTF-8',
  };
  final response= await http.post(
      Uri.parse('http://13.232.99.59:3000/yogdaan/welcomeMail'),body: data,headers: headers);

  if (response.statusCode == 200) {
    return jsonDecode(response.body);

  } else {
    // If the server did not return a 201 CREATED response,
    // then throw an exception.
    throw Exception('Failed to create User.');
  }
}

String userID= "";
// class NewUser{
//   late final String email;
//   late final String uid;
//   late final String username;
//   late final String number;
//   NewUser({required this.email,required this.uid, required this.number, required this.username});
//   factory NewUser.fromJson(Map<String,String> json){
//     return NewUser(
//         username: json['username'],
//       email: json['userEmail'],
//       number: json['phoneNumber'],
//         uid: json['uUID']
//
//     );
//   }
//
// }

class _SignUpState extends State<SignUp> {
  String? currentUser() {
    final User? user = FirebaseAuth.instance.currentUser;
    final uid = user?.uid.toString();
    userID = uid!;
    return uid;
  }

  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  @override
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  void registerNewUser(BuildContext context) async {
    try {
      // final User newUser = (await _firebaseAuth.createUserWithEmailAndPassword(email: emailTextEditingController.text, password: passwordTextEditingController.text)).user;

      final newPerson = await _firebaseAuth.createUserWithEmailAndPassword(
          email: emailTextEditingController.text,
          password: passwordTextEditingController.text);

      User? newUser = newPerson.user;

      if (newUser != null) {
        final User newUser = await _firebaseAuth.currentUser!;
        final userId = newUser.uid;
        print(userId);
        displayToastMessage("Account Created!", context);

        Navigator.pushNamedAndRemoveUntil(context, Home.id, (route) => false);
      }
    } catch (e) {
      print(e);
      displayToastMessage(e.toString(), context);
    }
  }



  void displayToastMessage(String message, BuildContext context) {
    Fluttertoast.showToast(
        msg: message,
        backgroundColor: Colors.grey.withOpacity(0.3),
        textColor: Colors.white,
        fontSize: 7);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.,

            children: <Widget>[
              SizedBox(height: 15),
              Container(child: Image.asset('image/logo.png')),
              SizedBox(height: 40),
              Container(
                  child: Text(
                'Sign Up.',
                style: GoogleFonts.poppins(
                    //color : Color(0xff57559E),
                    color: Color(0xff2F303A),
                    fontWeight: FontWeight.w500,
                    fontSize: 30),
              )),
              SizedBox(
                height: 10,
              ),
              SizedBox(height: 15),
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  controller: nameTextEditingController,
                  decoration: InputDecoration(
                    suffixIcon: Icon(CupertinoIcons.person_fill),
                    filled: true,
                    fillColor: Color(0xffECF0F5),
                    //border: OutlineInputBorder(borderSide: BorderSide(width: 0,color: Colors.transparent)),
                    border: InputBorder.none,
                    labelText: 'Enter your Name',
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  controller: emailTextEditingController,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.mail),
                    filled: true,
                    fillColor: Color(0xffECF0F5),
                    //border: OutlineInputBorder(borderSide: BorderSide(width: 0,color: Colors.transparent)),
                    border: InputBorder.none,

                    labelText: 'Enter your Email',
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  controller: numberController,
                  decoration: InputDecoration(
                    suffixIcon: Icon(CupertinoIcons.phone_fill),
                    filled: true,
                    fillColor: Color(0xffECF0F5),
                    //border: OutlineInputBorder(borderSide: BorderSide(width: 0,color: Colors.transparent)),
                    border: InputBorder.none,

                    labelText: 'Phone Number',
                  ),
                ),
              ),

              SizedBox(height: 15),
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  obscureText: true,
                  controller: passwordTextEditingController,
                  decoration: InputDecoration(
                    suffixIcon: Icon(CupertinoIcons.lock_fill),
                    filled: true,
                    fillColor: Color(0xffECF0F5),
                    border: InputBorder.none,
                    labelText: 'Enter your Password',
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                width: double.infinity,
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                  onPressed: () {
                    if (nameTextEditingController.text.length < 4) {
                      displayToastMessage(
                          'Name Should have more than 3 Letters', context);
                    } else if (!emailTextEditingController.text.contains('@')) {
                      displayToastMessage('Email Address Not Valid', context);
                    } else if (passwordTextEditingController.text.length < 7) {
                      displayToastMessage(
                          "Password should be more than 6 Characters", context);
                    }
                    registerNewUser(context);
                    currentUser();
                    createUser(emailTextEditingController.text, userID, nameTextEditingController.text, numberController.text);
                    sendMail(emailTextEditingController.text);
                  },
                  elevation: 0,
                  color: Color(0xff57559E),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      "Sign Up",
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account? ',
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                  ),
                  GestureDetector(
                      child: Text('Login',
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: Color(0xff57559E),
                              fontWeight: FontWeight.w700)),
                      onTap: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, Login.id, (route) => false);
                      })
                ],
              )
            ],
          )),
    );
  }
}
