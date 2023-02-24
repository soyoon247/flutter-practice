import 'package:flutter/material.dart';
import 'package:flutter_practice/webtoon/screens/home_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key}); // 위젯은 key 를 가지고 있고 Flutter 는 위젯을 식별하기 위해 key 를 사용한다.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
