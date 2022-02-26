import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class Services extends StatefulWidget {
  const Services({Key? key}) : super(key: key);

  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(height: 55),
              Column(
                children: [
                  Image.asset(
                    'image/logo.png',
                  ),
                  Text(
                    'Services Around me',
                    style: GoogleFonts.poppins(
                        color: Color(0xff2F303A),
                        fontWeight: FontWeight.w600,
                        fontSize: 30),
                  ),
                ],
              ),
              SizedBox(height: 30),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(15.0),
                      ),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    fillColor: Color(0xffECF0F5),
                    hintText: ('Search Organisation...'),
                    prefixIcon: Icon(
                      CupertinoIcons.search,
                      color: Color(0xff2F303A),
                    )),
              ),
              SizedBox(height: 30),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.circular(40.0),
                    color: Colors.tealAccent,
                  ),
                  height: MediaQuery.of(context).size.height*0.18,
                  width: MediaQuery.of(context).size.width*0.9,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(text: 'Samarwati Hospital ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white)),
                              TextSpan(
                                text: '\n\nMG Road Chennai',
                                style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white),
                              ),
                              TextSpan(
                                text: '\n Chennai - 611032',
                                style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width*0.2,),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.4),
                              borderRadius: BorderRadius.all(Radius.circular(80.0)),
                          ),
                          child: Icon(
                            Icons.phone_outlined,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.circular(40.0),
                    color: Colors.orange,
                  ),
                  height: MediaQuery.of(context).size.height*0.18,
                  width: MediaQuery.of(context).size.width*0.9,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(text: 'Teach for India NGO ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white)),
                              TextSpan(
                                text: '\n\nRK Road Chennai',
                                style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white),
                              ),
                              TextSpan(
                                text: '\n Chennai - 600032',
                                style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width*0.2,),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.4),
                            borderRadius: BorderRadius.all(Radius.circular(80.0)),
                          ),
                          child: Icon(
                            Icons.phone_outlined,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.circular(40.0),
                    color: Colors.lightBlue,
                  ),
                  height: MediaQuery.of(context).size.height*0.18,
                  width: MediaQuery.of(context).size.width*0.9,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(text: ' Police Station ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white)),
                              TextSpan(
                                text: '\n\nMaylapore Road Chennai',
                                style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white),
                              ),
                              TextSpan(
                                text: '\n Chennai - 611025',
                                style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width*0.2,),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.4),
                            borderRadius: BorderRadius.all(Radius.circular(80.0)),
                          ),
                          child: Icon(
                            Icons.phone_outlined,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.circular(40.0),
                    color: Colors.pink,
                  ),
                  height: MediaQuery.of(context).size.height*0.18,
                  width: MediaQuery.of(context).size.width*0.9,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(text: 'Samarwati Fire Station ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white)),
                              TextSpan(
                                text: '\n\n Race Cource Chennai',
                                style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white),
                              ),
                              TextSpan(
                                text: '\n Chennai - 689843 ',
                                style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width*0.2,),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.4),
                            borderRadius: BorderRadius.all(Radius.circular(80.0)),
                          ),
                          child: Icon(
                            Icons.phone_outlined,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),

            ])),
      ),
    );

  }
}
