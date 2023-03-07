import 'package:flutter/material.dart';
import 'package:flutter_practice/webtoon/screens/detail_screen.dart';

class Webtoon extends StatelessWidget {
  final String title, thumb, id;

  const Webtoon({
    super.key,
    required this.title,
    required this.thumb,
    required this.id,
  });

  final String userAgent =
      'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // router 는 위젯을 애니메이션 효과로 감싸서 스크린처럼 보이게 한다.
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailScreen(
                title: title,
                thumb: thumb,
                id: id,
              ),
              fullscreenDialog:
                  true, // 없으면 카드처럼, 있으면 스크린처럼 동작(x 버튼, 아래서 뜨는 이미지)
            ));
      },
      child: Column(
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
          const SizedBox(height: 10),
          Text(title,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              )),
        ],
      ),
    );
  }
}
