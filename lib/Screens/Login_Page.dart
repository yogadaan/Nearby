import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nearby/Screens/Signup_Page.dart';
import 'package:http/http.dart' as http;
import 'homePage.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  static String id='LoginPage';

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.,

            children: <Widget>[
              SizedBox(height: 55),
              Container(child: Image.asset('image/logo.png')),
              SizedBox(height: 40),
              Container(
                  child:  Text(
                    'Hey,\nLogin Now.',
                    style: GoogleFonts.poppins(
                      //color : Color(0xff57559E),
                        color: Color(0xff2F303A),
                        fontWeight: FontWeight.w500,
                        fontSize: 30),
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                  child:  Text(
                    'To Get Started Login Now!',
                    style: GoogleFonts.poppins(
                        fontSize: 15,
                        color: Colors.grey,
                        fontWeight: FontWeight.w600),
                  )),
              SizedBox(height: 60),
              Container(decoration: BoxDecoration( borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor : Color(0xffECF0F5),
                    //border: OutlineInputBorder(borderSide: BorderSide(width: 0,color: Colors.transparent)),
                    border: InputBorder.none,
                    labelText: 'Enter your email',
                      suffixIcon: Icon(CupertinoIcons.person_fill)
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                decoration: BoxDecoration( borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor : Color(0xffECF0F5),
                    border: InputBorder.none,
                    labelText: 'Enter your password',
                    suffixIcon: Icon(CupertinoIcons.lock_fill),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                width: double.infinity,
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                  onPressed: () async {
                    print('check 1');
                    try{
                      final user = await FirebaseAuth.instance.signInWithEmailAndPassword(
                          email: emailController.text,
                          password: passwordController.text);
                      if(user!= null){
                        Navigator.pushNamedAndRemoveUntil(context, Home.id, (route) => false);
                        print('check check');}
                    }catch (e){
                      print(e);
                    }
                  },
                  elevation: 0,
                  color: Color(0xff57559E),
                  child: Padding(
                    padding:  EdgeInsets.all(15),
                    child: Text(
                      "Login",
                      style: GoogleFonts.poppins(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),
              Row(
                children: [
                  Text('New to this? ',
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500)),
                  GestureDetector(
                    child:  Text(
                      'Create New',
                      style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w700, color: Color(0xff57559E)),
                    ),
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(context, SignUp.id, (route) => false);

                    },
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ],
          )),
    ) ;
  }
  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text , password: passwordController.text);

  }
}



