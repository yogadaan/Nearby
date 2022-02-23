import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nearby/Screens/Signup_Page.dart';
import 'package:http/http.dart' as http;
import 'homePage.dart';

class ProfilePage extends StatefulWidget {
  static String id = "ProfilePage";

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              child: Image.asset('image/logo.png'),
              height: 50,
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blueGrey[100],
                ),
                child: Icon(
                  Icons.person_sharp,
                  color: Colors.pinkAccent,
                  size: 50,
                ),
                alignment: Alignment.center,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                child: Text(
                  'User Name',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 25),
                ),
              ),
            ),
            SizedBox(height: 5),
            Center(
              child: Container(
                child: Text(
                  'user.name@email.com  |  987654321 ',
                  style: GoogleFonts.poppins(
                    color: Colors.grey[900],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: Colors.redAccent),
                  child: Center(
                    child: Text(
                      '24\nCases Uploded',
                      style:
                          TextStyle(color: Colors.white, fontSize: 20, height:4,fontWeight: FontWeight.w700),

                    ),
                  ),
                ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width*0.1,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: Colors.teal[300]),
                    child: Center(
                      child: Text(
                        '24\nCases Solved',
                        style:
                        TextStyle(color: Colors.white, fontSize: 20, height: 4,fontWeight: FontWeight.w700),
                      ),
                    ),
                  )),

                  ],
            ),
            SizedBox(height: 20,),
        Center(
          child: MaterialButton(onPressed: () {  },color: Colors.grey[300],
          child: Text('Change Password',style: GoogleFonts.poppins(
            color: Colors.black,fontWeight: FontWeight.w600
          ),),),
        ),

            SizedBox(height: 10,),
            Center(
              child: MaterialButton(onPressed: () {  },color: Colors.grey[300],
                child: Text('Sign Out',style: GoogleFonts.poppins(
                    color: Colors.black,fontWeight: FontWeight.w600
                ),),),
            ),

            // Expanded(child: Container(
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadiusDirectional.circular(5),
          //     color: Colors.grey[300],
          //
          //   ),
          // ))
          ],
        ),

      ),
    );
  }
}
