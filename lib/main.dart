import 'package:flutter/material.dart';

main() => runApp(const App());

class AppState extends State<App> {

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Olá mundo')
        )
      )
    );
  }
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  AppState createState() => AppState();
}