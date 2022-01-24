import 'package:fitness_flutter/screen/newregistration.dart';
import 'package:flutter/material.dart';
import '/screen/forgotpassword.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'avenir'),
      home: const LogInPage(),
    );
  }
}

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User LogIn')),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Welcome to Health and Fitness",
                style: TextStyle(fontSize: 35),
              ),
              const Text(
                "Enter your User Name and Password for LogIn ...",
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "User Name",
                style: TextStyle(fontSize: 23),
              ),
              const TextField(
                decoration:
                    InputDecoration(hintText: "Enter your User Name here"),
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "Password",
                style: TextStyle(
                  fontSize: 23,
                ),
              ),
              const TextField(
                decoration:
                    InputDecoration(hintText: "Enter your Password here"),
                obscureText: true,
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {
                        openForgotPassword(context);
                      },
                      child: const Text('Forgot Password?',
                          style: TextStyle(
                              fontSize: 16, color: Colors.blueAccent)))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.blue[400]),
                    onPressed: () {
                      showSnackBar();
                    },
                    child: const Text('LogIn to Account',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        )),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.blue[400]),
                    onPressed: () {
                      openNewRegistration(context);
                    },
                    child: const Text('Register New Account',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        )),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void openForgotPassword(context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const ForgotPassword()));
  }

  void openNewRegistration(context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const OpenNewRegistration()));
  }

  void showSnackBar() {
    final snackbar = SnackBar(
      content: Row(children: const [
        Icon(Icons.error_outline_sharp, size: 32, color: Colors.white),
        SizedBox(width: 20),
        Expanded(
            child: Text('LogIn details are invalid..',
                style: TextStyle(fontSize: 20)))
      ]),
      duration: const Duration(seconds: 2),
      backgroundColor: Colors.indigo.shade700,
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      behavior: SnackBarBehavior.floating,
      //width: 350,
      shape: const StadiumBorder(),
    );
    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(snackbar);
  }
}
