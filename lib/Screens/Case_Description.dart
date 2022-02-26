import 'package:flutter/material.dart';

class CaseDescription extends StatefulWidget {
  const CaseDescription({Key? key}) : super(key: key);
  static String id = 'CaseDesc';


  @override
  _CaseDescriptionState createState() => _CaseDescriptionState();
}

class _CaseDescriptionState extends State<CaseDescription> {
  final caseTypeController = TextEditingController();
  final acciController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 7),
            child: TextFormField(
              maxLines: 5,
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
                prefixIcon: Icon(
                  Icons.description_outlined,
                ),
                filled: true,
                fillColor: Colors.white,
                labelText: 'Description',
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                ),

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 7),
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
                prefixIcon: Icon(
                  Icons.phone_outlined,
                ),
                filled: true,
                fillColor: Colors.white,
                labelText: 'Contact Anyone',
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(context, 'HomePage', (route) => false);
                },
                minWidth: MediaQuery.of(context).size.width * 0.82,
                height: MediaQuery.of(context).size.height * 0.055,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22.0)),
                child: Text('Next',style: TextStyle(color: Colors.white,fontSize: 16),),
                color: Color(0xff57559E)),
          )
        ],
      ),
    );
  }
}
