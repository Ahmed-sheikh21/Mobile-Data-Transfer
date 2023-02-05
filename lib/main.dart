//import 'package:dalkey_data/Screens/Login.dart';
import 'package:dalkey_data/Screens/home.dart';
import 'package:dalkey_data/Screens/screens.dart';
import 'package:dalkey_data/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Data transfer',
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.green,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Myhome(),
    );
  }
}
