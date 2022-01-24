import 'package:flutter/material.dart';
import 'passwordchangedsuccessfully.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'avenir'),
      home: const ResetNewPassword(),
    );
  }
}

class ResetNewPassword extends StatefulWidget {
  const ResetNewPassword({Key? key}) : super(key: key);

  @override
  _ResetNewPasswordState createState() => _ResetNewPasswordState();
}

class _ResetNewPasswordState extends State<ResetNewPassword> {
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
            onPressed: () {}),
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
              "Reset Password",
              style: TextStyle(fontSize: 35),
            ),
            const Text(
              "Reset code was sent to your mail Id. Please enter the code and create a new password",
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Reset code",
              style: TextStyle(
                fontSize: 23,
              ),
            ),
            const TextField(
              decoration: InputDecoration(hintText: "****"),
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
              decoration: InputDecoration(hintText: "Enter your password here"),
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Confirm Password",
              style: TextStyle(
                fontSize: 23,
              ),
            ),
            const TextField(
              decoration:
                  InputDecoration(hintText: "Re-Enter your password here"),
              style: TextStyle(fontSize: 20),
            ),
            Expanded(
              child: Center(
                child: InkWell(
                  onTap: openSuccessPage,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                        color: Color(0xfff96060)),
                    child: const Text(
                      "Change Password",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void openSuccessPage() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const PasswordChangedSuccessfully()));
  }
}
