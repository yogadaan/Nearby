import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Case_Information extends StatefulWidget {
  const Case_Information({Key? key}) : super(key: key);

  @override
  _Case_InformationState createState() => _Case_InformationState();
}

class _Case_InformationState extends State<Case_Information> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 7),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  prefixIcon:Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Icon(
                      Icons.badge_outlined,color: Colors.red,
                    ),
                  ),
                    filled: true,
                  fillColor: Colors.white,
                    labelText: 'Accident',
                  labelStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 15,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 7),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  prefixIcon:Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Icon(
                      Icons.description_outlined,
                    ),
                  ),
                    filled: true,
                  fillColor: Colors.white,
                    labelText: 'Case Type',
                  labelStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 15,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 7),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  prefixIcon:Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Icon(
                      Icons.location_on_outlined,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Location',
                  labelStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 15,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 7),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  prefixIcon:Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Icon(
                      Icons.speed_outlined,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'severity',
                  labelStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 15,),
                ),
              ),
            ),
            MaterialButton(onPressed: (){},
              minWidth: MediaQuery.of(context).size.width*0.65,
              height: MediaQuery.of(context).size.height*0.055,
              shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(22.0) ),
              child: Text('Next'),
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
