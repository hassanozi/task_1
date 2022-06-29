import 'package:flutter/material.dart';
import 'package:task_1/pages/login.dart';
import 'package:task_1/pages/register.dart';
import 'package:task_1/widgets/slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: LoadingScreen(),
        
        routes: {
          LoginScreen.id: (context) => LoginScreen(),
          RegisterScreen.id :(context) => RegisterScreen()
        },
      );
      
  }
}

class LoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Slide();
    
  }
}