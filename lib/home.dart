import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  // TODO: Make a collection of cards (102)
  // Define a list of items (cards)
  final List<Widget> cards = [
    // Add your cards here
    // For example:
    Card(
      child: ListTile(
        title: Text('Item 1'),
      ),
    ),
    Card(
      child: ListTile(
        title: Text('Item 2'),
      ),
    ),
  ];

  // TODO: Add a variable for Category (104)
  // Define a category variable
  final String category = 'Category Name';

  @override
  Widget build(BuildContext context) {
    // TODO: Return an AsymmetricView (104)
    // TODO: Pass Category variable to AsymmetricView (104)
    return Scaffold(
      // TODO: Add app bar (102)
      appBar: AppBar(
        title: Text('Your App Name'), // Replace with your app's name
      ),
      // TODO: Add a grid view (102)
      body: GridView.count(
        crossAxisCount: 2, // Adjust the number of columns as needed
        children: cards, // Use the list of cards
      ),
      // TODO: Set resizeToAvoidBottomInset (101)
      resizeToAvoidBottomInset: false,
    );
  }
}
