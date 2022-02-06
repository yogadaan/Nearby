import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

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
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 40,),
          TextField(
            controller: emailController,
            cursorColor:Colors.white,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(labelText: 'Enter Email'),

          ),
          TextField(
            controller: passwordController,
            cursorColor:Colors.white,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(labelText: 'Enter Password'),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(onPressed: () async {
            print('check 1');
            try{
              final user = await FirebaseAuth.instance.signInWithEmailAndPassword(
                  email: emailController.text,
                  password: passwordController.text);
              if(user!= null){
                Navigator.pushNamedAndRemoveUntil(context, Home.id, (route) => false);
              print('check check');}
            }catch (e){print(e);}
    },
            child: Text('Signin'),
          )
        ],
      ),
    );
  }
  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text , password: passwordController.text);

  }
}


// class Login extends StatefulWidget {
//    Login({Key? key}) : super(key: key);
//   @override
//   _LoginState createState() => _LoginState();
// }
//
// class _LoginState extends State<Login> {
//
//    final emailController = TextEditingController();
//    final passwordController = TextEditingController();
//   @override
//   void dispose(){
//     emailController.dispose();
//     passwordController.dispose();
//
//     super.dispose();
//   }
//   Widget build(BuildContext context)  => SingleChildScrollView(
//     padding: EdgeInsets.all(16),
//     child: Material(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           SizedBox(height: 40,),
//           TextField(
//             controller: emailController,
//             cursorColor:Colors.white,
//             textInputAction: TextInputAction.next,
//             decoration: InputDecoration(labelText: 'Enter Email'),
//
//           ),
//           TextField(
//             controller: passwordController,
//             cursorColor:Colors.white,
//             textInputAction: TextInputAction.next,
//             decoration: InputDecoration(labelText: 'Enter Password'),
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           ElevatedButton(onPressed: signIn, child: Text('Signin'),
//           )
//         ],
//       ),
//     ),
//   );
//    Future signIn() async {
//      await FirebaseAuth.instance.signInWithEmailAndPassword(
//          email: emailController.text.trim() , password: passwordController.text.trim());
//    }
// }

