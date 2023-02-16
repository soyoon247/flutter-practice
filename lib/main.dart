import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

// flutter SDK에 있는 3개의 core Widget 중에 하나를 상속받아야 위젯이 된다.
class App extends StatelessWidget{
  // StatelessWidget을 상속받았기 떄문에 build 를 구현해야 함.
  // 앱의 root 라서 material, cupertino 구글과 애플의 디자인 시스템 둘 중 하나를 결정해야 한다. 구글이 만들었기 때문에 material 스타일이 더 낫다.
  // build 메소드를 통해 위젯의 UI를 만든다.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // 화면은 scaffold 를 가져야 한다. 화면의 구조를 제공해준다. (navigation bar, buttom tab bar, center of the screen)
        appBar: AppBar(
          centerTitle: false, // named parameter constructor
          title: Text("Hello Flutter!"), // positional parameter constructor
        ),
        body: Center(child: Text("Hello world!"),),
      ),
    );
  }
}
