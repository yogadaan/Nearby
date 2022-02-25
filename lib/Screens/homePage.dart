import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nearby/Screens/Login_Page.dart';
import 'package:nearby/Screens/profilePage.dart';

import '../Utilities/Bottom_Navigation.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  static String id = 'HomePage';

  @override
  State<Home> createState() => BottomNavigation();
}
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        child:
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 55),
          Row(
            children: [
              Text(
                'Find Spot\nPhotos',
                style: GoogleFonts.poppins(
                    color: Color(0xff2F303A),
                    fontWeight: FontWeight.w600,
                    fontSize: 30),
              ),
              SizedBox(
                width: 100,
              ),
              Container(child: Image.asset('image/logo.png')),
            ],
          ),
          SizedBox(height: 30),
          Container(
            decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: TextFormField(
              //controller: ,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffECF0F5),
                  border: InputBorder.none,
                  hintText: ('Search Cases Around...'),
                  prefixIcon: Icon(
                    CupertinoIcons.search,
                    color: Color(0xff2F303A),
                  )),
            ),
          ),
          SizedBox(height: 30),
          Container(
            child: Text(
              'Recent Case',
              style: GoogleFonts.poppins(
                  color: Color(0xff2F303A),
                  fontWeight: FontWeight.w600,
                  fontSize: 20),
            ),
          ),
          SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lorem Case Name',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                      Text('Case Type',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.w500)),
                      SizedBox(height: 20),
                      Text('Date',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.w500))
                    ],
                  ),
                  SizedBox(width: 110),
                  Container(
                    child: Image.asset('image/alarm.png'),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            child: Text(
              'Nearby Cases',
              style: GoogleFonts.poppins(
                  color: Color(0xff2F303A),
                  fontWeight: FontWeight.w600,
                  fontSize: 20),
            ),
          )
        ]));
  }
}



