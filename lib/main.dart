import 'package:flutter/material.dart';
import 'package:task_3/screens/details_screen.dart';
import 'package:task_3/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
        scaffoldBackgroundColor: Colors.grey[250],
      ),
      home: const DetailsScreen(title: '29 March'),
    );
  }
}
