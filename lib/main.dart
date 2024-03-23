import 'package:flutter/material.dart';

import 'package:solvers/screens/bottomNaviBar.dart';

void main() {
  runApp(const Solvers());
}

class Solvers extends StatelessWidget {
  const Solvers({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Solvers',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BottomNaviBar(1),
      debugShowCheckedModeBanner: false,
    );
  }
}
