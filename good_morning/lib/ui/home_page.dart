import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text('Good Morning'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            _buildFullCard('Weather', 'Show the weather', () {
              // Add call to the Weather screen
              print('Navigating to Weather Screen');
            }),
            _buildFullCard(
                'Today in History', 'Today, Steve Jobs died 12 years ago.', () {
              // Add call to the Today in History screen
              print('Navigating to Today in History Screen');
            }),
            Row(
              children: [
                Expanded(
                    child: _buildHalfCard(
                        'Fact of the Day', 'Honey never spoils.', () {
                  // Add call to the Fact of the Day screen
                  print('Navigating to Fact of the Day Screen');
                })),
                Expanded(
                    child: _buildHalfCard('Film of the Day', 'Oppenheimer', () {
                  // Add call to the Film of the Day screen.
                  print('Navigating to Film of the Day Screen');
                })),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFullCard(
      String title, String description, Function onTapAction) {
    return Card(
      color: Theme.of(context).cardColor,
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(description),
        onTap: () {
          onTapAction.call();
        },
      ),
    );
  }

  Widget _buildHalfCard(
      String title, String description, Function onTapAction) {
    return Card(
      color: Theme.of(context).cardColor,
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(description),
        onTap: () {
          onTapAction.call();
        },
      ),
    );
  }
}