import 'package:flutter/material.dart';
import 'package:flutter_practice/pomodoro/screens/home_screen.dart';

void main() {
  runApp(App());
}

Color redColor = const Color(0xFFE7626C);
Color blueColor = const Color(0xFF232B55);
Color whiteColor = const Color(0xFFF4EDDB);

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          // TODO ThemeData
          colorScheme:
              ColorScheme.fromSwatch(backgroundColor: const Color(0xFFE7626C)),
          textTheme: const TextTheme(
            displayLarge: TextStyle(
              color: Color(0xFF232B55),
            ),
          ),
          cardColor: const Color(0xFFF4EDDB),
        ),
        home: const Scaffold(
          body: HomeScreen(),
        ));
  }
}
