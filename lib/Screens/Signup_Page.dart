import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'homePage.dart';
import 'login_Page.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignUp extends StatefulWidget {
  static String id = 'registration_screen';

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {


  // var dbref = FirebaseDatabase.instance.reference().child('users');
  // final databaseReference = FirebaseDatabase.instance.reference();

  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  @override

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;


  void registerNewUser(BuildContext context) async {
    try {
      // final User newUser = (await _firebaseAuth.createUserWithEmailAndPassword(email: emailTextEditingController.text, password: passwordTextEditingController.text)).user;

      final newPerson = await _firebaseAuth.createUserWithEmailAndPassword(email: emailTextEditingController.text, password: passwordTextEditingController.text);

      User? newUser = newPerson.user;

      if (newUser != null) {

        final User newUser = await _firebaseAuth.currentUser!;
        final userId = newUser.uid;
        print(userId);
        displayToastMessage("Account Created!", context);

        Navigator.pushNamedAndRemoveUntil(
            context, Home.id, (route) => false);
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
      body: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.,

            children: <Widget>[
              SizedBox(height: 15),
              Container(child: Image.asset('images/logo.png')),
              SizedBox(height: 40),
              Container(
                  child: const Text(
                    'Sign Up.',
                    style: TextStyle(
                      //color : Color(0xff57559E),
                        color: Color(0xff2F303A),
                        fontWeight: FontWeight.w500,
                        fontSize: 30),
                  )),
              SizedBox(
                height: 10,
              ),
              SizedBox(height: 15),
              Container(decoration: BoxDecoration( borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  controller: nameTextEditingController,
                  decoration: InputDecoration(
                    suffixIcon: Icon(CupertinoIcons.person_fill),
                    filled: true,
                    fillColor : Color(0xffECF0F5),
                    //border: OutlineInputBorder(borderSide: BorderSide(width: 0,color: Colors.transparent)),
                    border: InputBorder.none,
                    labelText: 'Enter your name',
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(decoration: BoxDecoration( borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  controller: emailTextEditingController,
                  decoration: InputDecoration(
                    suffixIcon: Icon(CupertinoIcons.person_fill),
                    filled: true,
                    fillColor : Color(0xffECF0F5),
                    //border: OutlineInputBorder(borderSide: BorderSide(width: 0,color: Colors.transparent)),
                    border: InputBorder.none,

                    labelText: 'Enter your email',
                  ),
                ),
              ),
              SizedBox(height:15 ),
              Container(decoration: BoxDecoration( borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  controller: numberController,
                  decoration: InputDecoration(
                    suffixIcon: Icon(CupertinoIcons.phone_fill),
                    filled: true,
                    fillColor : Color(0xffECF0F5),
                    //border: OutlineInputBorder(borderSide: BorderSide(width: 0,color: Colors.transparent)),
                    border: InputBorder.none,

                    labelText: 'Phone Number',
                  ),
                ),
              ),

              SizedBox(height: 15),
              Container(
                decoration: BoxDecoration( borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  obscureText: true,
                  controller: passwordTextEditingController,
                  decoration: InputDecoration(
                    suffixIcon: Icon(CupertinoIcons.lock_fill),
                    filled: true,
                    fillColor : Color(0xffECF0F5),
                    border: InputBorder.none,
                    labelText: 'Enter your password',
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
                    print(nameTextEditingController);
                    print(emailTextEditingController);
                    print(passwordTextEditingController);
                    print(numberController);

                  },
                  elevation: 0,
                  color: Color(0xff57559E),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),
              TextButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                ),
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, Login.id, (route) => false);
                },
                child: RichText(
                  text: TextSpan(
                      text: 'Already have an account?',
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' Login',
                          style: GoogleFonts.lato(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Colors.black),
                        ),
                      ]),
                ),
              )
            ],
          )),
    );
  }
}