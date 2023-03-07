import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String title, thumb, id;

  const DetailScreen({
    super.key,
    required this.title,
    required this.thumb,
    required this.id,
  });


  final String userAgent =
      'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 2,
          backgroundColor: Colors.white,
          foregroundColor: Colors.green,
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 24,
            ),
          ),
        ),
        body: Column(children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 250,
                clipBehavior: Clip.hardEdge, // 자식의 부모 영역 침범을 제어함
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 15,
                      offset: const Offset(10, 10),
                      //  그림자의 위치 조정 (0,0)은 정가운데
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.network(thumb, headers: {'User-Agent': userAgent}),
              ),
            ],
          )
        ])); // 새로운 스크린처럼 동작해야 하니까 Scaffold 를 다시 불러와야 함.
  }
}
