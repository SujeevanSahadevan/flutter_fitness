import 'package:flutter/material.dart';

import 'list_details.dart';

class WorkOutHome extends StatelessWidget {
  const WorkOutHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const WorkOutHomeScreen();
  }
}

class WorkOutHomeScreen extends StatefulWidget {
  const WorkOutHomeScreen({Key? key}) : super(key: key);

  @override
  _WorkOutHomeScreenState createState() => _WorkOutHomeScreenState();
}

class _WorkOutHomeScreenState extends State<WorkOutHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
          children: [
            Card(
                color: Colors.black,
                child: ListTile(
                    title: const Text(
                      "ABS",
                      style: TextStyle(color: Colors.white),
                    ),
                    leading: SizedBox(
                      height: 80,
                      width: 70,
                      //child: Image.asset('asset/image/img01.jpg')
                      child: Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('asset/image/abs.jpg'),
                                fit: BoxFit.fitHeight)),
                      ),
                    ),
                    onTap: () => openListPage('ABS'))),
            const SizedBox(height: 30),
            Card(
                color: Colors.black,
                child: ListTile(
                    title: const Text("ARM",
                        style: TextStyle(color: Colors.white)),
                    leading: SizedBox(
                      height: 80,
                      width: 70,
                      //child: Image.asset('asset/image/img02.png')
                      child: Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('asset/image/img01.jpg'),
                                fit: BoxFit.fitHeight)),
                      ),
                    ),
                    onTap: () => openListPage('ARM'))),
            const SizedBox(height: 30),
            Card(
                color: Colors.black,
                child: ListTile(
                    title: const Text("CHEST",
                        style: TextStyle(color: Colors.white)),
                    leading: SizedBox(
                      height: 80,
                      width: 70,
                      //child: Image.asset('asset/image/img02.png')
                      child: Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('asset/image/chest.jpg'),
                                fit: BoxFit.fitHeight)),
                      ),
                    ),
                    onTap: () => openListPage('CHEST'))),
            const SizedBox(height: 30),
            Card(
                color: Colors.black,
                child: ListTile(
                    title: const Text("LEG",
                        style: TextStyle(color: Colors.white)),
                    leading: SizedBox(
                      height: 80,
                      width: 70,
                      //child: Image.asset('asset/image/img02.png')
                      child: Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('asset/image/leg.jpg'),
                                fit: BoxFit.fitHeight)),
                      ),
                    ),
                    onTap: () => openListPage('LEG'))),
            const SizedBox(height: 30),
            Card(
                color: Colors.black,
                child: ListTile(
                    title: const Text("SHOULDER",
                        style: TextStyle(color: Colors.white)),
                    leading: SizedBox(
                      height: 80,
                      width: 70,
                      //child: Image.asset('asset/image/img02.png')
                      child: Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('asset/image/shoulder.jpg'),
                                fit: BoxFit.fitHeight)),
                      ),
                    ),
                    onTap: () => openListPage('SHOULDER'))),
          ],
          padding: const EdgeInsets.all(10),
        ));
  }

  void openListPage(String stype) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                ListDetails(selectedCategory: 'Workout', selectedType: stype)));
  }
}
