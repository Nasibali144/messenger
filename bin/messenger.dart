import 'package:messenger/models/user_model.dart';
import 'package:messenger/services/io_service.dart';
import 'package:messenger/services/network_service.dart';

void main(List<String> arguments) async {
  writeln("Messenger\n");
  writeln("Sign Up");

  write("phone: ");
  String phone = read();

  write("name: ");
  String name = read();

  // User user = User(name: name, phone: phone);
  String response = await NetworkService.POST(
    NetworkService.apiUsers,
    NetworkService.headers,
    {"name": name, "phone": phone},
  );
  print(response);
}
