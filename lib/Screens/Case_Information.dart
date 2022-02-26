import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Case_Information extends StatefulWidget {
  const Case_Information({Key? key}) : super(key: key);
  static String id = 'CaseInfo';



  @override
  _Case_InformationState createState() => _Case_InformationState();
}

class _Case_InformationState extends State<Case_Information> {
  final acciController = TextEditingController();
  final caseTypeController = TextEditingController();
  final locationController = TextEditingController();
  final severityController = TextEditingController();
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
                controller: acciController,
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
                controller: caseTypeController,
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
                 controller: locationController,
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
                controller: severityController,
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(onPressed: (){
                if(acciController!=null&& caseTypeController!=null && locationController!=null && severityController !=null){
                  Navigator.pushNamed(context, 'CaseDesc');
                }else{
                  displayToastMessage('Fill all details', context);
                }
              },
                minWidth: MediaQuery.of(context).size.width*0.82,
                height: MediaQuery.of(context).size.height*0.055,
                shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(22.0) ),
                child: Text('Next',style: TextStyle(color: Colors.white,fontSize: 16),),
                  color: Color(0xff57559E)
              ),
            )
          ],
        ),
      ),
    );
  }
  void displayToastMessage(String message, BuildContext context) {
    Fluttertoast.showToast(
        msg: message,
        backgroundColor: Colors.grey.withOpacity(0.8),
        textColor: Colors.white,
        fontSize: 15);
  }
}
