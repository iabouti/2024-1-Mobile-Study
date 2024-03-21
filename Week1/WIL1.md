## WIL 1

1. Flutter 환경 설정

-Windows에서 Flutter 세팅하기
    -Flutter 공식 웹페이지에서 Flutter 파일을 다운로드하고 압축 파일을 원하는 곳에서 푼다. (C 드라이브가 대체적으로 편리함)
    
-환경 변수 설정
    -시스템 환경 변수에서 "Path"를 선택하여 편집한다. Flutter의 "bin" 폴더 경로를 추가한다. 

-Flutter Doctor 실행
    -명령 프롬프트에서 flutter doctor를 실행하여 Flutter의 설치 및 환경 설정 상태를 확인한다. 여기서 여러 가지 에러가 발생할 수 있다. 

-에러 해결 
    -dart:ui 에러:
    gradle 문서에서 코드 한 줄을 더 써서 해결했는데 링크를 잃어버렸다...

    -[!] Android Studio (2022.0) X Unable to find bundled Java version.: 
    https://brain-nim.tistory.com/86

    -Gradle과 Java 버전 불일치: 
    Gradle-Java Compatibility Matrix에서 서로 호환되는 버전으로 다운받아야 한다. 

2. 위젯 구성 방식

-Flutter에서 위젯을 어떻게 구성하는지,'당근마켓' 앱을 예시로 살펴보았다. 

-기본적으로 Flutter는 위젯을 사용하여 화면을 구성하고, 각 위젯은 특정한 기능이나 모양을 가진다. 

-화면을 구성할 때 위젯을 적절하게 조합하여 사용하면 코드를 간결하게 유지할 수 있다. 