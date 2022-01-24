import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
////import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import '/screen/loginpage.dart';
import 'screen/homepage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //get colors => null;

  @override
  void initState() {
    Timer(const Duration(seconds: 3), openLoginPage);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Image(
            image: AssetImage('asset/image/img01.jpg'),
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Positioned(
            bottom: 4,
            left: 140,
            top: 580,
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(24),
                color: Colors.white.withOpacity(0.1),
                child: const Text(
                  'Health and Fitness',
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void openLoginPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const LoginPage()));

    // context,
    // MaterialPageRoute(builder: (context) => const HomePage()));
  }
}
