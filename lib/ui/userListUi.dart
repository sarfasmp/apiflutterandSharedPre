import 'package:api_sharedepfrs/provider/loginProvider.dart';
import 'package:api_sharedepfrs/provider/userListProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var logPro = Provider.of<UserListProvider>(context);
    return Scaffold(
      body: ListView(
        children: [
         IconButton(onPressed: (){
           logPro.fetchUsingDio();
           }, icon: Icon(Icons.account_balance)),
          logPro.userListSecond!=null?
          Text(logPro.userListSecond!.data.toString()):
              Text("data")

        ],
      ),

    );
  }
}
