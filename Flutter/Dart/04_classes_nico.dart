class Player {
  final String name = "Kim";
  int xp = 100;

  void printName() {
    // method
    print("My name is $name.");
  }
}

class PlayerConstrutorLate {
  late final String name;
  late int xp;

  PlayerConstrutorLate(String name, int xp) {
    // Construtor
    this.name = name;
    this.xp = xp;
  }

  void printName() {
    print("My name is $name.");
  }
}

class PlayerPositionalConstrutor {
  final String name;
  int xp;

  PlayerPositionalConstrutor(this.name, this.xp);

  void printName() {
    print("My name is $name.");
  }
}

class PlayerNamedConstrutorParameter {
  final String name;
  int xp;

  PlayerNamedConstrutorParameter({
    required this.name, // null이 아니도록 required 추가
    required this.xp,
  });

  void printName() {
    print("My name is $name.");
  }
}

enum Team { Blue, Red } // class 내부에 선언 불가, "" 사용 ㄴㄴ

class PlayerNamedConstructor {
  String name;
  int age, xp;
  Team team;

  PlayerNamedConstructor.createBlueTeam(String name, int age)
      : this.name = name,
        this.age = age,
        xp = 0,
        team = Team.Blue;

  PlayerNamedConstructor.createRedTeam({
    required String name,
    required int age,
  })  : this.name = name,
        this.age = age,
        xp = 0,
        team = Team.Red;

  void printName() {
    print("My name is $name.");
  }
}

abstract class AbstractHuman {
  void hello(); // 청사진만 있음
}

class PlayerAbstract extends AbstractHuman {
  // 상속
  void hello() {
    print("Hello");
  }
}

class Human {
  final String name;
  Human(name) : this.name = name;

  void sayHi() {
    print("Hi. I'm $name.");
  }
}

mixin Scream { // 생성자 없음
  void screaming() {
    print("Aaaaaaaaaaaaaaaaaaaaa!");
  }
}

class PlayerExtends extends Human with Scream {
  Team team;
  PlayerExtends(team, String name)
      : this.team = team,
        super(name);

  @override
  void sayHi() {
    super.sayHi();
    print("We're $team.");
  }
}

void main() {
  // 00 First Class
  var player0 = Player();
  print(player0.xp);
  player0.xp += 100; // 변수 변경 가능
  print(player0.xp);

  // player0.name = "Lee"; // final은 불변

  player0.printName();

  // 01 Constructors
  var player1 = PlayerConstrutorLate("Lee", 1000);
  player1.printName();

  var player2 = PlayerPositionalConstrutor("Park", 2000);
  player2.printName();

  // 02 Named Constructor Parameters
  var player3 = PlayerNamedConstrutorParameter(
    name: "Choi",
    xp: 1500,
  );
  player3.printName();

  // 03 Named Constructors
  var player4 = PlayerNamedConstructor.createBlueTeam("Han", 22);
  player4.printName();

  var player5 = PlayerNamedConstructor.createRedTeam(
    name: "Yoon",
    age: 22,
  );
  player5.printName();

  // 05 Cascade Notation
  // 06 Enums
  var player6 = PlayerNamedConstructor.createBlueTeam("Han", 22)
    ..name = "Jung" // 앞에 class가 나오면 .으로 class 지칭 가능
    ..age = 25
    ..xp = 100
    ..team = Team.Red;
  player6.printName();

  // 07 Abstract Classes
  var player7 = PlayerAbstract();
  player7.hello();

  // 08 Inheritance
  // 09 Mixins
  var human = Human("King");
  human.sayHi();

  var player8 = PlayerExtends(Team.Red, "Queen");
  player8.sayHi();
  player8.screaming();
}
