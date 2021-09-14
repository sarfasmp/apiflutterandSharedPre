import 'package:api_sharedepfrs/provider/serviceProvider.dart';
import 'package:api_sharedepfrs/provider/userListProvider.dart';
import 'package:api_sharedepfrs/ui/serviceRe.dart';
import 'package:api_sharedepfrs/ui/userListUi.dart';

import 'ui/loginPage.dart';
import 'provider/loginProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => LoginProvider()),
      ChangeNotifierProvider(create: (_) => UserListProvider()),
      ChangeNotifierProvider(create: (_) => ServiceProvider()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Service(),
    );
  }
}
