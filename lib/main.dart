import 'package:flutter/material.dart';
import 'views/home_view.dart';

void main() {
  runApp(const BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter book app ui ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
            elevation: 0,
            backgroundColor: Color.fromARGB(255, 9, 0, 32),
            actionsIconTheme: IconThemeData(
              color: Colors.white,
            )),
        primaryColorDark: const Color(0xffef8262),
        scaffoldBackgroundColor: const Color.fromARGB(255, 9, 0, 32),
      ),
      home: const HomeView(),
    );
  }
}
