import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizapp/home.dart';
import 'package:quizapp/provider.dart';
import 'package:quizapp/theme.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => QuizState(),
      child: MaterialApp(
        theme: appTheme,
        home: const HomeScreen(),
      ),
    );
  }
}
