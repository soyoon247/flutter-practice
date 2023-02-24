class WebtoonModel {
  final String title, thumb, id;


  WebtoonModel.fromJson(Map<String, dynamic> json) // named constructor 사용하기
      : title = json["title"],
        thumb = json["thumb"],
        id = json["id"];

// 이렇게도 쓸 수 있지만, 잘 쓰이지 않는 패턴
// late String title, thumb, id;
//
// WebtoonModel(Map<String, dynamic> json){
//   title = json["title"];
//   thumb = json["thumb"];
//   id = json["id"];
// }
}
