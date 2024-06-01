class UserModel {
  String name;
  int age;
  UserModel({
    required this.name,
    required this.age,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'age': age,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'] as String,
      age: map['age'] as int,
    );
  }
}
