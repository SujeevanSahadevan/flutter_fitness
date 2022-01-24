import 'package:flutter/material.dart';
import '/screen/workout_home.dart';
import '/screen/diet_home.dart';
import 'user_review.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'avenir'),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  //final colorstheme = Color(0xff2ac3ff); //Color(0xff4b4b87);

  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this, initialIndex: 0)
      ..addListener(() {});
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Health and Fitness',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          labelStyle:
              const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          indicatorPadding: const EdgeInsets.all(5),
          indicatorSize: TabBarIndicatorSize.label,
          tabs: const <Widget>[
            Tab(
              //icon: Icon(Icons.work_off_rounded),
              text: 'Workout',
            ),
            Tab(
              //icon: Icon(Icons.food_bank_rounded, color: Colors.white),
              text: 'Diet Food',
            ),
            Tab(
              //icon: Icon(Icons.food_bank_rounded, color: Colors.white),
              text: 'User Review',
            ),
            // Tab(
            //   //icon: Icon(Icons.food_bank_rounded, color: Colors.white),
            //   text: 'COMPARIISON',
            // ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          WorkOutHome(),
          DietHome(),
          UserReview(),
        ],
      ),
    );
  }
}
