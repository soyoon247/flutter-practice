import 'dart:async';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int totalSeconds = 1500;
  late Timer timer; // 당장 초기화하지 않아도 되지만, 사용하기 전에는 반드시 초기화할거라는 것.

  void onTick(Timer timer) {
    setState(() {
      totalSeconds = totalSeconds - 1;
    });
  }

  void onStartPressed() {
    // 내장 timer 이용, 정해진 간격으로 함수 실행
    timer = Timer.periodic(
      Duration(seconds: 1),
      onTick,
    ); // periodic 이 실행하는 함수는 인자로 Timer 를 받기 때문에 onTick 함수에 넣어줘야 한다.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Column(
          children: [
            Flexible(
              // TODO Flexible
              flex: 1,
              child: Container(
                alignment: Alignment.bottomCenter,
                child: Text(
                  "$totalSeconds",
                  style: TextStyle(
                    color: Theme.of(context).cardColor,
                    fontSize: 89,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ), // Flexible : 비율에 기반한 UI를 만들 수 있게 만든다.
            Flexible(
              flex: 3,
              child: Center(
                child: IconButton(
                  iconSize: 120,
                  color: Theme.of(context).cardColor,
                  onPressed: onStartPressed,
                  // TODO button 여러 번 누르면 이상하게 작동하는데?
                  icon: const Icon(
                    Icons.play_circle_outline,
                  ),
                ),
              ),
            ),
            Flexible(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(
                      // TODO Expanded
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Theme.of(context).cardColor,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Pomodoros",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .color,
                              ),
                            ),
                            Text(
                              "0",
                              style: TextStyle(
                                fontSize: 58,
                                fontWeight: FontWeight.w600,
                                color: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .color,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          ],
        ));
  }
}
