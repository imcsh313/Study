void main() {
  // 00 Hello World
  print('Hello World');

  // 01 The Var Keyword
  var Var = 'abc';
  Var = 'efg'; // var 내용 수정 가능
  // Var = 123; 다른 타입으로 수정 불가능

  String string = 'abc'; // 타입 명시도 가능

  // 02 Dynamic Type
  dynamic Dynamic = 'abc';
  Dynamic = 123; // dynamic은 타입 자유롭게 사용 가능

  var VarDynamic; // var 선언 후 초기화 안하면 dynamic
  VarDynamic = 'abc';
  VarDynamic = 123;

  if (Dynamic is String) {
    // dynamic 타입 확인 후 해당 타입 메소드 사용 가능
    print(Dynamic.length);
  }

  // 03 Nullable Variables
  // 기본적으로 변수에 null 사용 불가
  // String stringNotNull = null;

  String? stringNullable = 'abc';
  stringNullable = null; // ?를 붙이면 null 사용 가능

  // stringNullable.length; 메서드 사용 전에 null 확인해야 함

  // != null
  if (stringNullable != null) {
    stringNullable.length;
  }

  // ?.
  stringNullable?.length;

  // 04 Final Variable
  final Final = 'abc';
  // Final = 'def'; final은 1회만 설정 가능

  final int FinalInt = 123; // 타입 설정 가능

  // 05 Late Variables
  late final int LateFinalInt;
  LateFinalInt = 123; // late는 나중에 값을 넣는다는 뜻

  // 06 Constant Variables
  const Const = 'abc'; // 컴파일 시간에 알고 있는 값
}
