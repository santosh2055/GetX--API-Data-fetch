import 'package:http/http.dart' as http;
import 'package:user_list/Model/user.dart';

class ApiServices {
  static Future<List<Person>?> fetchUsers() async {
    var response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/users/'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      print(jsonString);
      return personFromJson(jsonString);
    } else {
      return null;
    }
  }
}
