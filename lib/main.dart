import 'package:flutter/material.dart';
import 'package:lab_1/screen/details.dart';
import 'package:lab_1/screen/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Испити app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const ExamListPage(),
        "/details": (context) => const DetailsPage(),
      },
    );
  }
}

