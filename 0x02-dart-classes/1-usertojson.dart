


class User {
  User({required this.name, required this.age, required this.height});
  String name = "";

  int age = 0;

  double height = 0;

  Map toJson() {
    return {
      "name": name,
      "age": age,
      "height": height,
    };
  }

  String showName() {
    return "Hello $name";
  }
}

