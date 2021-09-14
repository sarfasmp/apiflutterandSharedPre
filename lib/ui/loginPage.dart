import '../provider/loginProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => LoginProvider(),
        builder: (context, widget) {
          var logPro = Provider.of<LoginProvider>(context);
          return Scaffold(
            body: SafeArea(
              child: Center(
                child: Column(
                  children: [
                    Text(logPro.sar),
                    TextFormField(),
                    Text("Password"),
                    TextFormField(),
                    TextButton(
                        onPressed: () {
                          logPro.getHttp(context);
                        },
                        child: Text("Login"))
                  ],
                ),
              ),
            ),
          );
        });
  }
}
