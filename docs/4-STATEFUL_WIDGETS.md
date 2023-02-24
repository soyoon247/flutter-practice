### StatefulWidget

- StatelessWidget : build 메소드를 통해 UI를 그린다.
- StatefulWidget : 상태에 따라 변하게 된다. 위젯에 데이터를 저장하고, 실시간으로 데이터의 변화를 볼 수 있다.
- setState : State 클래스에 데이터가 변경되었음을 알려준다. (반드시 데이터 변경 코드를 setState 안에 넣지 않아도 되지만, setState 를 실행해야
  변화가 반영됨)

### BuildContext

- 부모요소에 접근하기 위해서 context(BuildContext = 위젯 트리 안에서 위젯의 위치를 다룬다) 를 이용해야 한다.
- context는 이전에 있는 모든 상위 요소들에 대한 정보를 모두 가지고 있다.
- 예시) Theme.of(context).cardColor

### LifeCycle

- StatefulWidget은 살아있고, Lifecycle 을 갖는다.
- initState : build 보다 먼저 실행되며, 단 한 번만 호출된다. 부모 요소에 의존하는 데이터를 초기화할 때 등..
- dispose : 위젯이 스크린에서 제거될 떄 실행된다.
