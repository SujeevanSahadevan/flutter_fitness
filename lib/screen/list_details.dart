import 'package:flutter/material.dart';

class ListDetails extends StatefulWidget {
  final String selectedCategory;
  final String selectedType;
  const ListDetails(
      {Key? key, required this.selectedCategory, required this.selectedType})
      : super(key: key);

  @override
  State<ListDetails> createState() => _ListDetailsState();
}

class _ListDetailsState extends State<ListDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.selectedType)),
      body: Center(
          child: Text(widget.selectedType + ' : ' + widget.selectedCategory)),
      floatingActionButton: FloatingActionButton(
        child: const Text('ADD'),
        onPressed: () {},
      ),
    );
  }
}
