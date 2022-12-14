import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:jadeais/screens/loginscreen/loginpage.dart';
import 'package:jadeais/screens/recharge_screen.dart';
import 'package:jadeais/screens/signupscreen/tabbar%20view/home_screen.dart';


import 'firebase_options.dart';
import 'screens/signupscreen/tabbar view/nevegation_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:  LoginPage(),
    );
  }
}

