
/// MODEL
class HomeModel {
  String name, surname, position;
  int age;
  HomeModel({
    required this.name,
    required this.surname,
    required this.age,
    required this.position,
  });

  Map<String, dynamic> toJson() => {
        'name': name,
        'surname': surname,
        'age': age,
        'position': position,
      };

  factory HomeModel.fromJson(Map<String, dynamic> json) => HomeModel(
        name: json['name'],
        surname: json['surname'],
        age: json['age'],
        position: json['position'],
      );
}
