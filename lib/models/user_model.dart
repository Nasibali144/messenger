class User {
  int? id;
  late String phone;
  late String name;
  String? username;
  String? userImage;

  User({this.id, required this.name, required this.phone, this.username, this.userImage});

  User.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    phone = json["phone"];
    name = json["name"];
    username = json["username"];
    userImage = json["userImage"];
  }

  Map<String, dynamic> toJson() => {
    "id": id,
    "phone": phone,
    "name": name,
    "username": username,
    "userImage": userImage,
  };

  @override
  String toString() {
    return "name: $name\nphone: $phone";
  }
}