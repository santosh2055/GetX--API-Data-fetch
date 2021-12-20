import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';
import 'package:user_list/Controller/userController.dart';
import 'package:user_list/Screen/usertile.dart';

class HomeScreen extends StatelessWidget {
  final UserController userController = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[300],
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(child: Text('User Information')),
      ),
      body: Column(
        children: [
          Expanded(
            child: Obx(() {
              if (userController.isLoading.value)
                return Center(
                  child: CircularProgressIndicator(),
                );
              else {
                return ListView.builder(
                    itemCount: userController.userList.length,
                    itemBuilder: (context, index) {
                      return UserTile(userController.userList[index]);
                    },
                    );
              }
            },
            ),
          ),
        ],
      ),
    );
  }
}
