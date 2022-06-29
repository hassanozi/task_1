import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:provider/provider.dart';
import 'package:task_1/pages/register.dart';

import '../widgets/custome_textfield.dart';

class LoginScreen extends StatelessWidget {
  static String id = 'loginscreen';

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    late String Username, Password;

    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Column(children: [
          Center(
            child: Image(
              image: AssetImage('assets/Welcome.png'),
            ),
          ),
          Row(
            children: [
              Text(
                'Sign in',
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
              SizedBox(
                width: 200,
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
          SizedBox(
            height: 20,
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
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
              onPrimary: Colors.white,
              shadowColor: Colors.blue,
              elevation: 3,

              minimumSize: Size(340, 40), //////// HERE
            ),
            onPressed: () {},
            child: Text('Login'),
          ),
          SizedBox(
            height: 100,
          ),
          Text(
            'Or',
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.lightBlue,
              onPrimary: Colors.blueAccent,
              shadowColor: Colors.blue,
              elevation: 3,
              minimumSize: Size(340, 40),
            ),
            onPressed: () {},
            child: Text('Sigin in with google',
                style: TextStyle(fontSize: 20, color: Colors.white)),
          ),
          Row(
            children: [
              Text(
                'Dont have an account ?',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, RegisterScreen.id);
                  },
                  child: Text('Sign up'),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
