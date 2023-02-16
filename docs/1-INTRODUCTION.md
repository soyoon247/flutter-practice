### Apps built with Flutter


- wonderous
- I/O Photo Booth
- Flokk contacts
- flutterplasma.dev
- google i/o pinball


---


### Flutter는 다른 크로스플랫폼 프레임워크와 어떻게 다른가

[Flutter Architecture](https://docs.flutter.dev/resources/architectural-overview)

<img src="https://docs.flutter.dev/assets/images/docs/arch-overview/archdiagram.png" width=50% height=50%>

- 네이티브 앱 개발을 할 때는 운영체제(ios, android)와 직접 대화를 하고, 이 운영체제가 각 요소들을 만들어준다.
- 플러터는 직접 버튼을 만들지 않고, 운영체제와 소통을 하지도 않는다 > 비디오 게임 엔진처럼 동작함
- 운영체제는 단지 runner 프로젝트를 실행시켜 엔진을 동작시킬 뿐이고, C/C++ 로 만들어진 이 엔진이 UI를 랜더링해준다.
- 운영체제가 직접 네이티브 위젯을 그리지 않기 때문에
    - ios와 비슷해보이지만 똑같지는 않다. 가짜 위젯이라 부자연스럽다고 하기도 한다.
    - 하지만 특정 운영체제에 의존하지 않고 화면상의 모든 픽셀을 조절하기 때문에 navigation, animation 등 모든 걸 통제할 수 있고,
    - 어느 플랫폼에서나 똑같이 보인다.
- 각각의 플랫폼에 특화된 Embedder(runner project)가 존재하고, 이는 엔진을 가동시킨다.


---


### Flutter VS React Native

- React Native : javascript 를 통해서 운영체제와 소통하고, 운영체제는 네이티브 앱처럼 보이는 컴포넌트와 위젯을 만든다. 네이티브 앱 운영체제에서 가능한 위젯을 사용하고 싶다면, RN
- Flutter : 많은 플러터 앱들이 ios 같지도 android 같지도 않은, 각자의 커스터마이징된 디자인을 갖고 있는 것처럼 보인다. 이렇게 보이길 원한다면, Flutter

