import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                  "25:00",
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
                  onPressed: () {},
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
