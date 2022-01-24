import 'package:flutter/material.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';

class OpenNewRegistration extends StatelessWidget {
  const OpenNewRegistration({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const NewRegistration();
  }
}

class NewRegistration extends StatefulWidget {
  const NewRegistration({Key? key}) : super(key: key);

  @override
  _NewRegistrationState createState() => _NewRegistrationState();
}

// class User {
//   String Id ;
//   final String name ;
//   final String email ;
//   final String pwd;

//   User ({
//     this.Id = '',
//     required this.name,
//     required this.email,
//     required this.pwd,

//   });
// }

class _NewRegistrationState extends State<NewRegistration> {
  // adddata(valName) async {
  //   await FirebaseFirestore.instance.collection("Users").add({
  //     UserName = valName,
  //   });
  // }

  // String name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('New Registration'),
        //backgroundColor: Colors.black,
      ),
      body: Container(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Create Account",
                style: TextStyle(fontSize: 35),
              ),
              const Text(
                "Enter your Name,Email and Password for Signup ...",
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "User Name",
                style: TextStyle(fontSize: 23),
              ),
              const TextField(
                //controller: ControllerUserName,

                // onChanged: (valName) {
                //   setState(() {
                //     name = valName;
                //   });
                // },

                decoration:  InputDecoration(
                    hintText: "Enter your User Name here"),
                style:  TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Email Address",
                style: TextStyle(fontSize: 23),
              ),
              const TextField(
                //controller: ControllerEmail,
                decoration: const InputDecoration(
                    hintText: "Enter your Email Address here"),
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Password",
                style: TextStyle(fontSize: 23),
              ),
              TextField(
                //controller: ControllerPwd,
                decoration:
                    const InputDecoration(hintText: "Enter your Password here"),
                obscureText: true,
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 80,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.blue[400]),
                    onPressed: () {
                      //adddata(name);
                    },
                    child: const Text('SignUp',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        )),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.blue[400]),
                    onPressed: () {},
                    child: const Text('Cancel',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
            ],
          ))),
    );

    // Future createUser({required String name}) async {
    //   final docUser = FirebaseFirestore.instance.collection('Users').doc();

    //   final user = User {
    //     'Id' =docUser.id,
    //     'UserName' = name,
    //     'Email' = email ,
    //     'Password' = pwd
    //   };

    //   await docUser.set(json);
    // }
  }
}
