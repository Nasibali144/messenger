class Message {
  bool? fromMe;
  String? content;
  int? createdDate;
  String? id;
  String? contactId;

  Message(
      {this.fromMe, this.content, this.createdDate, this.id, this.contactId});

  Message.fromJson(Map<String, dynamic> json) {
    fromMe = json['from_me'];
    content = json['content'];
    createdDate = json['created_date'];
    id = json['id'];
    contactId = json['contactId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['from_me'] = fromMe;
    data['content'] = content;
    data['created_date'] = createdDate;
    data['id'] = id;
    data['contactId'] = contactId;
    return data;
  }
}
