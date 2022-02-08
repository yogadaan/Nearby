import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  static String id = 'HomePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),

    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [SizedBox(height: 55),

    Row(
    children:
    [Text('Find Spot\nPhotos', style: GoogleFonts.poppins(
    color: Color(0xff2F303A),fontWeight: FontWeight.w600,
    fontSize: 30),
    ),
    SizedBox(width: 100,),
    Container(child: Image.asset('image/logo.png')),
    ],
    ),

    SizedBox(height: 30),
    Container(decoration: BoxDecoration( borderRadius: BorderRadius.circular(10)),
    child: TextFormField(
    //controller: ,
    decoration: InputDecoration(
    filled: true,
    fillColor: Color(0xffECF0F5),
    border: InputBorder.none,
    labelText: ('Search Cases Around...'),
    prefixIcon:Icon(CupertinoIcons.search)
    ),

    ),

    ),

    ]
    )));
  }
}
