import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nearby/Screens/Case_Information.dart';

class CameraWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CameraWidgetState();
  }
}

class CameraWidgetState extends State<CameraWidget> {
  PickedFile? imageFile = null;

  Future<void> _showChoiceDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              "Choose option",
              style: TextStyle(color: Color(0xff5A559F)),
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Divider(
                    height: 1,
                    color: Color(0xff5A559F),
                  ),
                  ListTile(
                    onTap: () {
                      _openGallery(context);
                    },
                    title: Text("Gallery"),
                    leading: Icon(
                      Icons.account_box,
                      color: Color(0xff5A559F),
                    ),
                  ),
                  Divider(
                    height: 1,
                    color: Color(0xff5A559F),
                  ),
                  ListTile(
                    onTap: () {
                      _openCamera(context);
                    },
                    title: Text("Camera"),
                    leading: Icon(
                      Icons.camera,
                      color: Color(0xff5A559F),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Card(
                shadowColor: Colors.transparent,
                color: Colors.transparent,
                child: (imageFile == null)
                    ? Container(
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: Text("Add images of the Incedent"),
                        )
                )
                    : Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height*0.5,
                    child: Image.file(File(imageFile!.path))),
              ),
              MaterialButton(
                onPressed: () {
                  _showChoiceDialog(context);
                },

                child: Container(
                  color: Colors.grey.shade200,
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.height * 0.25,
                  child: Icon(
                    Icons.attach_file_outlined,
                    size: 35,
                  ),
                ),
              ),
              MaterialButton(
                textColor: Colors.white,
                color: Color(0xff5A559F),
                onPressed: () {
                  if(imageFile !=null){
                    Navigator.pushNamed(context, 'CaseInfo');
                  }else{
                    displayToastMessage('Add image first', context);
                  }
                },
                child: Text("Add Image"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _openGallery(BuildContext context) async {
    final pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
    );
    setState(() {
      imageFile = pickedFile!;
    });

    Navigator.pop(context);
  }

  void _openCamera(BuildContext context) async {
    final pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
    );
    setState(() {
      imageFile = pickedFile!;
    });
    Navigator.pop(context);
  }
  void displayToastMessage(String message, BuildContext context) {
    Fluttertoast.showToast(
        msg: message,
        backgroundColor: Colors.grey.withOpacity(0.8),
        textColor: Colors.white,
        fontSize: 15);
  }
}
