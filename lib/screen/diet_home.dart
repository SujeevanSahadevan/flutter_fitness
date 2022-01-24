import 'package:flutter/material.dart';
import 'list_details.dart';

class DietHome extends StatelessWidget {
  const DietHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DietHomeScreen();
  }
}

class DietHomeScreen extends StatefulWidget {
  const DietHomeScreen({Key? key}) : super(key: key);

  @override
  _DietHomeScreenState createState() => _DietHomeScreenState();
}

class _DietHomeScreenState extends State<DietHomeScreen> {
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
                      "PLANT BASED DIETS",
                      style: TextStyle(color: Colors.white),
                    ),
                    leading: SizedBox(
                      height: 80,
                      width: 70,
                      //child: Image.asset('asset/image/img01.jpg')
                      child: Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'asset/image/plant based diets.jpg'),
                                fit: BoxFit.fitHeight)),
                      ),
                    ),
                    onTap: () => openListPage('PLANT BASED DIETS'))),
            const SizedBox(height: 30),
            Card(
                color: Colors.black,
                child: ListTile(
                    title: const Text("LOW CARB DIETS",
                        style: TextStyle(color: Colors.white)),
                    leading: SizedBox(
                      height: 80,
                      width: 70,
                      //child: Image.asset('asset/image/img02.png')
                      child: Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'asset/image/low carb diets.jpg'),
                                fit: BoxFit.fitHeight)),
                      ),
                    ),
                    onTap: () => openListPage('LOW CARB DIETS'))),
            const SizedBox(height: 30),
            Card(
                color: Colors.black,
                child: ListTile(
                    title: const Text("PALEO DIETS",
                        style: TextStyle(color: Colors.white)),
                    leading: SizedBox(
                      height: 80,
                      width: 70,
                      //child: Image.asset('asset/image/img02.png')
                      child: Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('asset/image/paleo diet.jpg'),
                                fit: BoxFit.fitHeight)),
                      ),
                    ),
                    onTap: () => openListPage('PALEO DIETS'))),
            const SizedBox(height: 30),
            Card(
                color: Colors.black,
                child: ListTile(
                    title: const Text("LOW FAT DIETS",
                        style: TextStyle(color: Colors.white)),
                    leading: SizedBox(
                      height: 80,
                      width: 70,
                      //child: Image.asset('asset/image/img02.png')
                      child: Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('asset/image/low fat diets.jpg'),
                                fit: BoxFit.fitHeight)),
                      ),
                    ),
                    onTap: () => openListPage('LOW FAT DIETS'))),
            const SizedBox(height: 30),
            Card(
                color: Colors.black,
                child: ListTile(
                    title: const Text("DASH DIETS",
                        style: TextStyle(color: Colors.white)),
                    leading: SizedBox(
                      height: 80,
                      width: 70,
                      //child: Image.asset('asset/image/img02.png')
                      child: Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('asset/image/dash diet.jpg'),
                                fit: BoxFit.fitHeight)),
                      ),
                    ),
                    onTap: () => openListPage('DASH DIETS'))),
          ],
          padding: const EdgeInsets.all(10),
        ));
  }

  void openListPage(String stype) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                ListDetails(selectedCategory: 'Diet', selectedType: stype)));
  }
}
