import 'package:get/get.dart';
import 'package:user_list/Model/user.dart';
import 'package:user_list/Services/api_scrvices.dart';

class UserController extends GetxController {
  var isLoading = true.obs;
  var userList = List<Person>.empty().obs;

  @override
  void onInit() {
    fetchUser();
    super.onInit();
  }

  void fetchUser() async {
    try {
      isLoading(true);
      var users = await ApiServices.fetchUsers();
      if (users != null) {
        userList.addAll(users);
      }
    } finally {
      isLoading(false);
    }
  }
}
