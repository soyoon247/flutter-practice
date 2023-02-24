import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final bool isInverted;
  final int order;

  final _blackColor = const Color(0xFF1F2123);

  const CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.isInverted,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, -(order - 1) * 20),
      child: Container(
        clipBehavior: Clip.hardEdge, // overflowed 됐을 때 어떻게 처리할지 ,
        decoration: BoxDecoration(
          color: isInverted ? Colors.white : _blackColor,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 32,
                      color: isInverted ? _blackColor : Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(children: [
                    Text(
                      amount,
                      style: TextStyle(
                        fontSize: 20,
                        color: isInverted ? _blackColor : Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      code,
                      style: TextStyle(
                        fontSize: 20,
                        color: isInverted
                            ? _blackColor
                            : Colors.white.withOpacity(0.8),
                      ),
                    )
                  ])
                ],
              ),
              // 아이콘이 카드 크기보다 커지도록 만들기, 아이콘 크기를 키우면 카드 자체도 커진다. transform 을 이용
              Transform.scale(
                  // 크기 변경
                  scale: 2.2,
                  child: Transform.translate(
                    // 위치 변경
                    offset: const Offset(8, 15),
                    child: Icon(
                      icon,
                      size: 88,
                      color: isInverted ? _blackColor : Colors.white,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
