import 'package:flutter/material.dart';

class CustomeTextField extends StatelessWidget {
  
  final String hint;
  final IconData icon;
  void Function(String?) onClick;


  String errormessage (String str){
    switch (hint) {
      case 'Your Name': return 'Name is empty';
      case 'User Name': return 'User Name is empty';
      case 'Enter Password': return 'Password is empty';
    } return hint;
  } 
  CustomeTextField({required this.onClick, required this.icon, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextFormField(
        validator: (value){
          if (value!.isEmpty) {
            return errormessage(hint);
          } return null;
        },
        onSaved: onClick,
        obscureText: hint == 'Enter Password' ? true : false,
        decoration: InputDecoration(
          hintText: hint,
          prefixIcon: Icon(
            icon,
            color: Color(0xFFEC7063),
          ),
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: Colors.black
            )
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: Colors.black
            )
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: Colors.black
            )
          ), 
        ),
      ),
    );
  }
}
