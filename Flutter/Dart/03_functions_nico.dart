void main() {
  // 00 Defining a Function
  // 가독성을 위해 function은 main 함수 안에 기술
  String sayHi(String name) {
    return "Hi $name.";
  }

  print(sayHi("KIM"));

  String sayHello(String name) => "Hello $name."; // 1줄일 경우 => 사용 가능
  print(sayHello("Lee"));

  // 01 Named Parameters
  String repeatABCPositional(String a, int b, String c) => "$a, $b, $c";
  print(repeatABCPositional('A', 2, 'C')); // positional parameter
  //positional parameter는 모두 required

  // String repeatABCNamed({String a, int b, String c}) => "$a, $b, $c"; // named parameter
  // null에 대한 처리가 없음

  String repeatABCNamedDefault({String a = 'A', int b = 2, String c = "C"}) =>
      "$a, $b, $c";
  // default value
  print(repeatABCNamedDefault(
    a: 'AA',
    c: 'CC',
  )); // b는 default 값 2가 들어감

  String repeatABCNamedRequired({
    required String a,
    required int b,
    required String c,
  }) {
    return "$a, $b, $c";
  } // 변수 앞에 required 붙이면 null 값이 오는 걸 막음

  print(repeatABCNamedRequired(
    a: 'AAA',
    b: 222,
    c: 'CCC',
  ));

  // 03 Optional Positional Parameter
  String repeatABCOptionalPositional(String a, int b, [String? c = "C"]) =>
      "$a, $b, $c";
  print(repeatABCOptionalPositional('AA', 123));

  // 04 QQ Operator
  /*
  String capitalizeName(String? name) {
    if (name != null) return name.toUpperCase();
    return "noname";
  }
  */
  // String capitalizeName(String? name) => name != null ? name.toUpperCase() : "noname";
  String capitalizeName(String? name) => name?.toUpperCase() ?? "noname";
  // ?? 좌변이 null이 아니면 좌변, 좌변이 null이면 우변

  print(capitalizeName("kim"));
  print(capitalizeName(null));

  String? string;
  string ??= "Lee"; // ??= 좌변이 null이면 우변 넣어줘
  string ??= "Park";
  print(string);

  // 05 Typedef
  // main 밖에서 정의
  // typedef MyType = List<int>;
}
