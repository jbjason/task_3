import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_3/providers/symptoms.dart';
import 'package:task_3/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => Symptoms()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.grey,
          scaffoldBackgroundColor: Colors.grey[200],
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
