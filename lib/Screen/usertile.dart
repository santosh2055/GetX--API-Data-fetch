import 'package:flutter/material.dart';
import 'package:user_list/Model/user.dart';
import 'package:user_list/Screen/userDetails_screen.dart';

class UserTile extends StatelessWidget {
  final Person user;
  const UserTile(this.user);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: Card(
        elevation: 5,
        child: ListTile(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Name : ${user.name}',
                style: TextStyle(fontSize: 20, color: Colors.blueAccent),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'UserName : ${user.username}',
                    style: TextStyle(fontSize: 17, color: Colors.black54),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => UserDetilsScreen(
                              Person(
                                  id: user.id,
                                  name: user.name,
                                  username: user.username,
                                  email: user.email,
                                  phone: user.phone,
                                  address: user.address,
                                  company: user.company,
                                  website: user.website),
                            ),
                          ),
                        );
                      },
                      child: Text('Details'))
                ],
              ),
              Text('Email : ${user.email}'),
            ],
          ),
        ),
      ),
    );
  }
}
