class User {
  String name = "";

  int age = 0;

  double height = 0;

  Map toJson() {
    return {
      'name': name,
      'age': age,
      'height': height,
    };
  }

  String showName() {
    return 'Hello $name';
  }

}
