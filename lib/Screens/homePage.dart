import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Hi! Username',
                      style: GoogleFonts.poppins(
                          color: Color(0xff2F303A),
                          fontWeight: FontWeight.w600,
                          fontSize: 25),
                    ),
                  ),

                  Expanded(child: Image.asset('image/logo.png')),
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
              SingleChildScrollView(
                scrollDirection:Axis.horizontal,
                child: Row(
                  children: [
                    Card(
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      child: Stack(
                        children: [

                          Container(
                            height: MediaQuery.of(context).size.height*0.22,
                            width: MediaQuery.of(context).size.width*0.9,
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(40.0),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://images.unsplash.com/photo-1566933293069-b55c7f326dd4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80"
                                  ),
                                  fit: BoxFit.cover
                              ),
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height*0.22,
                            width: MediaQuery.of(context).size.width*0.9,
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.3),
                              borderRadius:
                              BorderRadius.circular(40.0),
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height*0.22,
                            width: MediaQuery.of(context).size.width*0.9,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(text: 'Accident ',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white)),
                                      TextSpan(
                                        text: '\n12:30 AM | 26 February',
                                        style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      child: Stack(
                        children: [

                          Container(
                            height: MediaQuery.of(context).size.height*0.22,
                            width: MediaQuery.of(context).size.width*0.9,
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(40.0),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://images.unsplash.com/photo-1575987446487-56eba08666cf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80"
                                  ),
                                  fit: BoxFit.cover
                              ),
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height*0.22,
                            width: MediaQuery.of(context).size.width*0.9,
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.3),
                              borderRadius:
                              BorderRadius.circular(40.0),
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height*0.22,
                            width: MediaQuery.of(context).size.width*0.9,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(text: 'Warning: Criminal Activities in the area ',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white)),
                                      TextSpan(
                                        text: '\n11:30 AM | 26 February',
                                        style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      child: Stack(
                        children: [

                          Container(
                            height: MediaQuery.of(context).size.height*0.22,
                            width: MediaQuery.of(context).size.width*0.9,
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(40.0),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://images.unsplash.com/photo-1547722700-57de0f73d3a5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1653&q=80'
                                  ),
                                  fit: BoxFit.cover
                              ),
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height*0.22,
                            width: MediaQuery.of(context).size.width*0.9,
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.3),
                              borderRadius:
                              BorderRadius.circular(40.0),
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height*0.22,
                            width: MediaQuery.of(context).size.width*0.9,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(text: 'Trash on the Road ',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white)),
                                      TextSpan(
                                        text: '\n03:30 PM | 22 February',
                                        style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      child: Stack(
                        children: [

                          Container(
                            height: MediaQuery.of(context).size.height*0.22,
                            width: MediaQuery.of(context).size.width*0.9,
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(40.0),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://images.unsplash.com/photo-1566617947632-6198d642043c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80'
                                  ),
                                  fit: BoxFit.cover
                              ),
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height*0.22,
                            width: MediaQuery.of(context).size.width*0.9,
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.3),
                              borderRadius:
                              BorderRadius.circular(40.0),
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height*0.22,
                            width: MediaQuery.of(context).size.width*0.9,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(text: 'Helpless animals on the Road ',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white)),
                                      TextSpan(
                                        text: '\n09:30 AM | 19 February',
                                        style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: Text(
                  'Past Case',
                  style: GoogleFonts.poppins(
                      color: Color(0xff2F303A),
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                ),
              ),
              SingleChildScrollView(
                scrollDirection:Axis.horizontal,
                child: Row(
                  children: [
                    Card(
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      child: Stack(
                        children: [

                          Container(
                            height: MediaQuery.of(context).size.height*0.22,
                            width: MediaQuery.of(context).size.width*0.9,
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(40.0),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://images.unsplash.com/photo-1575987446487-56eba08666cf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80"
                                  ),
                                  fit: BoxFit.cover
                              ),
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height*0.22,
                            width: MediaQuery.of(context).size.width*0.9,
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.3),
                              borderRadius:
                              BorderRadius.circular(40.0),
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height*0.22,
                            width: MediaQuery.of(context).size.width*0.9,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(text: 'Warning: Criminal Activities in the area ',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white)),
                                      TextSpan(
                                        text: '\n11:30 AM | 26 February',
                                        style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      child: Stack(
                        children: [

                          Container(
                            height: MediaQuery.of(context).size.height*0.22,
                            width: MediaQuery.of(context).size.width*0.9,
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(40.0),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://images.unsplash.com/photo-1566933293069-b55c7f326dd4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80"
                                  ),
                                  fit: BoxFit.cover
                              ),
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height*0.22,
                            width: MediaQuery.of(context).size.width*0.9,
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.3),
                              borderRadius:
                              BorderRadius.circular(40.0),
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height*0.22,
                            width: MediaQuery.of(context).size.width*0.9,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(text: 'Accident ',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white)),
                                      TextSpan(
                                        text: '\n12:30 AM | 26 February',
                                        style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      child: Stack(
                        children: [

                          Container(
                            height: MediaQuery.of(context).size.height*0.22,
                            width: MediaQuery.of(context).size.width*0.9,
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(40.0),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://images.unsplash.com/photo-1566617947632-6198d642043c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80'
                                  ),
                                  fit: BoxFit.cover
                              ),
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height*0.22,
                            width: MediaQuery.of(context).size.width*0.9,
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.3),
                              borderRadius:
                              BorderRadius.circular(40.0),
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height*0.22,
                            width: MediaQuery.of(context).size.width*0.9,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(text: 'Helpless animals on the Road ',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white)),
                                      TextSpan(
                                        text: '\n09:30 AM | 19 February',
                                        style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      child: Stack(
                        children: [

                          Container(
                            height: MediaQuery.of(context).size.height*0.22,
                            width: MediaQuery.of(context).size.width*0.9,
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(40.0),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://images.unsplash.com/photo-1547722700-57de0f73d3a5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1653&q=80'
                                  ),
                                  fit: BoxFit.cover
                              ),
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height*0.22,
                            width: MediaQuery.of(context).size.width*0.9,
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.3),
                              borderRadius:
                              BorderRadius.circular(40.0),
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height*0.22,
                            width: MediaQuery.of(context).size.width*0.9,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(text: 'Trash on the Road ',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white)),
                                      TextSpan(
                                        text: '\n03:30 PM | 22 February',
                                        style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(height: 20),

            ]),
          ),
        ),
      ),
    );
  }
}



