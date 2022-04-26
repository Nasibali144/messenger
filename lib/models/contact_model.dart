/*
{"phone":"phone 1","name":"name 1","id":"1","userId":"1"}
 */

class Contact {
  String? phone;
  String? name;
  String? id;
  String? userId;

  Contact({this.phone, this.name, this.id, this.userId});

  Contact.fromJson(Map<String, dynamic> json) {
    phone = json['phone'];
    name = json['name'];
    id = json['id'];
    userId = json['userId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['phone'] = phone;
    data['name'] = name;
    data['id'] = id;
    data['userId'] = userId;
    return data;
  }
}