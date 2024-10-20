void main() {
  // 00 Basic Data Types
  String string = "abc";
  bool Bool = true;
  int Int = 1;
  double Double = 9.9;

  // int와 double은 num의 자식 class
  num Num = 10;
  Num = 1.1;

  // 01 Lists
  var List = [1, 2, 3]; // List<int>
  List = [
    1,
    2,
    3,
  ]; // 마지막을 ,로 끝내면 펼쳐짐

  // collection if
  var addFour = true;
  List = [
    1,
    2,
    3,
    if (addFour) 4,
  ];
  print(List);

  // 02 String Interpolation
  var name = "KIM";
  var age = 2000;
  var introduce = "Hi. My name is $name. I'm ${2024 - age}.";
  print(introduce);

  // 03 Colletion For
  var firstList = ['a', 'b', 'c'];
  var secondList = [
    1,
    2,
    3,
    for (var list in firstList) "Hi $list",
  ];
  print(secondList);

  // 04 Maps
  var map = {
    'a': 'A',
    'b': 2,
    'c': true,
  }; // Map<String, Object>

  // 05 Sets
  var Set = {1, 2, 3}; // Set<int> 중복 안 됨. 순서 있음
  Set.add(1);
  print(Set);
}
