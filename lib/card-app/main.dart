import 'package:flutter/material.dart';
import 'package:flutter_practice/card-app/widgets/button.dart';
import 'package:flutter_practice/card-app/widgets/card.dart';

void main() {
  runApp(const App());
}

// flutter SDK에 있는 3개의 core Widget 중에 하나를 상속받아야 위젯이 된다.
class App extends StatelessWidget {
  const App({super.key});

  // StatelessWidget을 상속받았기 떄문에 build 를 구현해야 함.
  // 앱의 root 라서 material, cupertino 구글과 애플의 디자인 시스템 둘 중 하나를 결정해야 한다. 구글이 만들었기 때문에 material 스타일이 더 낫다.
  // build 메소드를 통해 위젯의 UI를 만든다.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        // Color.fromARGB, Color.fromRGBO(R,G,B,Opacity)
        // 화면은 scaffold 를 가져야 한다. 화면의 구조를 제공해준다. (navigation bar, buttom tab bar, center of the screen)
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 80),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          "Hey, Soyoon",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 34,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          "Welcome back",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 18,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),
                Text(
                  "Total Balance",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 22,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "\$5 194 482", // $ 를 정말 달러표시로 쓰고 싶을
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 48,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Button(
                      text: "Transfer",
                      bgColor: Color(0xFFF1B33B),
                      textColor: Colors.black,
                    ),
                    Button(
                      text: "Request",
                      bgColor: Color(0xFF1F2123),
                      textColor: Colors.white,
                    )
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Wallets",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.w600,
                        )),
                    Text("View All",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          // opacity는 컴파일할 때 알 수 없는 값. children : const [] 에서 const 삭제해야 함.
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        )),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const CurrencyCard(
                  name: "Euro",
                  code: "EUR",
                  amount: "6 428",
                  icon: Icons.euro_rounded,
                  isInverted: false,
                  order: 1,
                ),
                const CurrencyCard(
                  name: "Bitcoin",
                  code: "BTC",
                  amount: "9 785",
                  icon: Icons.currency_bitcoin_rounded,
                  isInverted: true,
                  order: 2,
                ),
                const CurrencyCard(
                  name: "Dollar",
                  code: "USD",
                  amount: "428",
                  icon: Icons.attach_money_outlined,
                  isInverted: false,
                  order: 3,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// 런타임이 아니라 컴파일 도중에 값을 산정할 수 있도록 최적화가 된다. const 를 사용하면
