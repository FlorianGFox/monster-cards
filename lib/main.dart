import 'package:flutter/material.dart';
import 'injection_container.dart' as dependencyInjection;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  dependencyInjection.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: Text("hello"),
      ),
    );
  }
}
