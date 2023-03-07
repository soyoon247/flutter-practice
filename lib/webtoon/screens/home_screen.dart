import 'package:flutter/material.dart';
import 'package:flutter_practice/webtoon/services/api_service.dart';

import '../models/webtoon_model.dart';
import '../widgets/webtoon_widget.dart';

// basic way, but There is a way to make it in StatelessWidget
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
// List<WebtoonModel> webtoons = [];
// bool isLoading = true;
//
// void waitForWebToons() async {
//   webtoons = await ApiService.getTodaysToons();
//   setState(() {
//     isLoading = false;
//   });
// }
//
// @override
// void initState() {
//   super.initState();
//   waitForWebToons(); // initState 에서 데이터를 받아온 뒤, 넣어주고 setState 로 다시 그리게 한다.
// }

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final Future<List<WebtoonModel>> webtoons = ApiService.getTodaysToons();

  ListView makeList(AsyncSnapshot<List<WebtoonModel>> snapshot) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      scrollDirection: Axis.horizontal,
      itemCount: snapshot.data!.length,
      itemBuilder: (context, index) {
        print(index);
        var webtoon = snapshot.data![index];
        return Webtoon(
          title: webtoon.title,
          thumb: webtoon.thumb,
          id: webtoon.id,
        );
      },
      // 모든 리스트를 다 그리지 않고, 사용자가 보고 있는 아이템만 build한다, 보고 있지 않으면 메모리에서 삭제한다.
      separatorBuilder: (context, index) => const SizedBox(width: 40),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 2,
          backgroundColor: Colors.white,
          foregroundColor: Colors.green,
          title: const Text(
            "오늘의 웹툰",
            style: TextStyle(
              fontSize: 24,
            ),
          ),
        ),
        body: FutureBuilder(
          future: webtoons,
          builder: (context, snapshot) {
            // snapshot 대신 future 같은 이름 써도 된다.
            if (snapshot.hasData) {
              // snapshot 을 통해서 Future 의 상태를 알 수 있다.
              // return ListView(
              //   children: [
              //     for (var webtoon in snapshot.data!) Text(webtoon.title)
              //     // ListView 는 스크롤뷰도 제공한다.
              //   ],
              // );
              return Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Expanded(
                      // expanded 를 안 쓰면 column이 ListView 의 크기를 모르기 때문에 에러가 난다.
                      child: makeList(snapshot)),
                ],
              ); // ListView 보다 최적화
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ));
  }
}
// Expanded 는 row, column의 child를 확장해서, child 가 남는 공간을 다 채우게 한다.
