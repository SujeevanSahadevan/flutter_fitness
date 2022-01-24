import 'package:flutter/material.dart';
import 'resetpassword.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'avenir',
      ),
      home: const ForgottonPassword(),
    );
  }
}

class ForgottonPassword extends StatefulWidget {
  const ForgottonPassword({Key? key}) : super(key: key);

  @override
  _ForgottonPasswordState createState() => _ForgottonPasswordState();
}

class _ForgottonPasswordState extends State<ForgottonPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            //openLoginPage();
            //Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Forgot Password",
              style: TextStyle(fontSize: 35),
            ),
            const Text(
              "Please enter your mail ID to receive your password and reset information",
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Mail ID",
              style: TextStyle(
                fontSize: 23,
              ),
            ),
            const TextField(
              decoration: InputDecoration(hintText: "john@example.com"),
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 40,
            ),
            Center(
              child: InkWell(
                onTap: openResetPassword,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 130, vertical: 20),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      color: Color(0xfff96060)),
                  child: const Text(
                    "Send Request",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void openResetPassword() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const ResetPassword()));
  }

  // void openLoginPage() {
  //   Navigator.pop(context);
  // }
}
