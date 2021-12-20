import 'package:flutter/material.dart';
import 'package:user_list/Model/user.dart';
import '../constant.dart';

class UserDetilsScreen extends StatelessWidget {
  final Person u;
  const UserDetilsScreen(
    this.u,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Details'),
      ),
      body: ListTile(
        title: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30, top: 10, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Name : ${u.name}',
                    style: kfirstdetailtext,
                  ),
                  Text(
                    'UserName : ${u.username}',
                    style: kfirstdetailtext,
                  ),
                  Text(
                    'Email : ${u.email}',
                    style: kfirstdetailtext,
                  ),
                  Text(
                    'Phone : ${u.phone}',
                    style: kfirstdetailtext,
                  ),
                  Text(
                    'Website : ${u.website}',
                    style: kfirstdetailtext,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Divider(),
            Padding(
              padding: EdgeInsets.only(left: 30, top: 10, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Address',
                    style: kfirstdetailtext,
                  ),
                  Text('Street : ${u.address!.street}'),
                  Text(
                    'Suite : ${u.address!.suite}',
                    style: TextStyle(),
                  ),
                  Text(
                    'City : ${u.address!.city}',
                    style: TextStyle(),
                  ),
                  Text(
                    'ZipCode : ${u.address!.zipcode}',
                    style: TextStyle(),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.only(left: 30, top: 10, bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Company',
                    style: kfirstdetailtext,
                  ),
                  Text('Name: ${u.company!.name}'),
                  Text('CatchPhrase: ${u.company!.catchPhrase}'),
                  Text('Bs: ${u.company!.bs}'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
