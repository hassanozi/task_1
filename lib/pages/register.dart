import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:provider/provider.dart';

import '../widgets/custome_textfield.dart';



class RegisterScreen extends StatelessWidget {

  static String id = 'registerscreen';
  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    late String Username, Password;


    return Scaffold(
        backgroundColor: Colors.white,
        body:  Column(children: [
          Center(
            child: Image(
              image: AssetImage('assets/Welcome.png'),
            ),
          ),
          Row(
            children: [
              Text(
                'Register',
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
              
              Text(
                'Help',
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ),
              Icon(
                Icons.help,
                color: Colors.blue,
              )
            ],
          ),
          
          
          Expanded(
            child: Dialog(
              child: TextFormField(
                  decoration: InputDecoration(
                labelText: "Email",
                fillColor: Colors.white,
              )),
            ),
            
          ),
          Expanded(
            child: Dialog(
              child: TextFormField(
                  decoration: InputDecoration(
                labelText: "Phone Number",
                fillColor: Colors.white,
              )),
            ),
            
          ),
          Expanded(
            child: Dialog(
              child: TextFormField(
                  decoration: InputDecoration(
                labelText: "Password",
                fillColor: Colors.white,
              )),
            ),
            
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
              onPrimary: Colors.white,
              shadowColor: Colors.blue,
              elevation: 3,
              
              minimumSize: Size(340, 40), //////// HERE
            ),
            onPressed: () {},
            child: Text('Register'),
          ),
          Text('Or', style: TextStyle(fontSize: 20, color: Colors.black),),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.lightBlue,
              onPrimary: Colors.blueAccent,
              shadowColor: Colors.blue,
              elevation: 3,
              
              minimumSize: Size(340, 40), 
            ),
            onPressed: () {},
            child: Text('Sigin in with google', style: TextStyle(fontSize: 20, color: Colors.white)),
            
          ),
        ]),
        );
  }
}