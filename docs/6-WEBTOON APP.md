[코드](../lib/webtoon/widgets/webtoon_widget.dart)

### Widgets

- AppBar
    - elevation
    - backgroundColor
    - foregroundColor
    - title
    - actions
- BoxDecoration
    - boxShadow
    - border
    - borderRadius
    - color
- BoxShadow
    - blurRadius
    - offset
    - color
- CircularProgressIndicator : 로딩중을 표시하는 위젯
- FutureBuilder : 비동기로 받아와야 하는 값(Future)을 StatelessWidget 에서도 그릴 수 있게 해준다.
- ListView
    - scrollDirection 지정 가능
    - 스크롤뷰도 제공
    - itemBuilder를 통해 리스트에 들어갈 위젯을 생성해준다.
    - ListView.builder : 모든 리스트를 다 그리지 않고, 사용자가 보고 있는 아이템만 빌드한다.
    - ListView.separated : 아이템 사이에 들어갈 위젯을 넣을 수 있다.
    - 리스트가 길고, 최적화가 중요할 때 사용한다.(그 정도가 아니라면 사용하지 않아도 된다)
- GestureDetector : 위젯에 이벤트를 넣을 수 있다.
- Navigator.push() : 스택 형태로 child widget 리스트를 갖고 있는 위젯. push 로 새로운 route를 넣는다.
    - MaterialPageRoute : 라우터로 위젯을 감싸면 다른 스크린으로 이동하는 효과를 낼 수 있다.
        - fullscreenDialog : false면 카드처럼, true면 스크린처럼 동작한다.
- Hero : 같은 tag 를 가진 위젯이 이동하는 것처럼 보이는 효과를 준다.

### package

- url_launcher : flutter 에서 url 을 띄운다 (sms, tel, https 등)
    - 각각 AndroidManifest.xml, Info.plist 에 추가해줘야한다.
- shared_preferences : 간단한 데이터를 영구적으로 저장

### etc

- hot reload 는 dart 코드 변경만 감지한다. 안드로이드, ios 파일을 변경했을 경우 정지한 후 새로 빌드해야 반영된다.
- constructor 에서는 위젯의 데이터(사용자가 선택한 값)를 사용할 수 없음. initState 가 필요하기 때문에 이럴 때는 StatefulWidget 으로 변경해준다.
- column 의 overflow 문제 : SingleChildScrollView로 위젯을 감싼다.
- row 의 overflow 문제 : Expanded로 위젯을 감싼다.