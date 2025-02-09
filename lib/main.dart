import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20), // Margin of 20 pixels around the container
          padding: EdgeInsets.all(15), // Padding of 15 pixels inside the container
          decoration: BoxDecoration(
            color: Colors.blue, // Background color of the container
            borderRadius: BorderRadius.circular(10), // Rounded corners
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min, // Column takes only the space it needs
            children: [
              Text(
                'Welcome to the Home Page!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 10), // Spacing between text and button
              ElevatedButton(
                onPressed: () {
                  // Navigate to SecondPage
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondPage()),
                  );
                },
                child: Text('Go to Second Page'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20), // Margin of 20 pixels around the container
          padding: EdgeInsets.all(15), // Padding of 15 pixels inside the container
          decoration: BoxDecoration(
            color: Colors.green, // Background color of the container
            borderRadius: BorderRadius.circular(10), // Rounded corners
          ),
          child: Text(
            'You have successfully navigated to the Second Page!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}