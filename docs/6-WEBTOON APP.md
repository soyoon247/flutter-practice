[코드](../lib/webtoon/widgets/webtoon_widget.dart)

### Widgets

- AppBar
- BoxShadow
    - blurRadius
    - offset
- CircularProgressIndicator : 로딩중을 표시하는 위젯


- FutureBuilder : 비동기로 받아와야 하는 값(Future)을 StatelessWidget 에서도 그릴 수 있게 해준다.
- ListView
    - scrollDirection 지정 가능
    - 스크롤뷰도 제공
    - itemBuilder를 통해 리스트에 들어갈 위젯을 생성해준다.
    - ListView.builder : 모든 리스트를 다 그리지 않고, 사용자가 보고 있는 아이템만 빌드한다.
    - ListView.separated : 아이템 사이에 들어갈 위젯을 넣을 수 있다.
- GestureDetector : 위젯에 이벤트를 넣을 수 있다.
- Navigator.push() : 스택 형태로 child widget 리스트를 갖고 있는 위젯. push 로 새로운 route를 넣는다.
    - MaterialPageRoute : 라우터로 위젯을 감싸면 다른 스크린으로 이동하는 효과를 낼 수 있다.
        - fullscreenDialog : false면 카드처럼, true면 스크린처럼 동작한다.
