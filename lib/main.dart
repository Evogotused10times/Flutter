import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Exam App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Color(0xFF101010), 
        primaryColor: Color(0xFF00FF00),
        appBarTheme: AppBarTheme(
          color: Color(0xFF101010), 
          foregroundColor: Color(0xFF00FF00), 
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Color(0xFF00FFFF), 
          textTheme: ButtonTextTheme.primary,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFFFF00FF), 
            foregroundColor: Colors.black, 
          ),
        ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Color(0xFF00FF00)), 
          bodyMedium: TextStyle(color: Color(0xFF00FFFF)), 
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Exam App'),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Settings tapped!')),
              );
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                Text(
                  'Welcome to the Flutter Exam!',
                  style: TextStyle(fontSize: 26, color: Color(0xFF00FF00)),
                ),
                SizedBox(height: 10),
                Image.asset(
                  'assets/nigga.jpg',
                  width: 200,
                  height: 200,
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Text(
            'This app demonstrates the use of assets, fonts, buttons, and icons in Flutter.',
            style: TextStyle(fontSize: 16, color: Color(0xFF00FFFF)), 
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          ElevatedButton.icon(
            icon: Icon(Icons.check),
            label: Text('Confirm'),
            onPressed: () {
              print('Confirmation Successful!');
            },
          ),
          SizedBox(height: 10),
          ElevatedButton.icon(
            icon: Icon(Icons.close),
            label: Text('Cancel'),
            onPressed: () {
              print('Action Canceled');
            },
          ),
          Expanded(
            child: PageView(
              children: [
                Image.asset('assets/bayot.jpg',
                width: 150,
                height: 150,
                ),
                Image.asset('assets/nigga.jpg'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
