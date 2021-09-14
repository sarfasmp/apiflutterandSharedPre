import 'package:api_sharedepfrs/model/apiModel.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier {
  String _sar = "";
  String get sar => _sar;

  void changeTitle() {
    _sar = "Gmail";
    notifyListeners();
  }

  Response? response;
  Dio dio = Dio();

  void getHttp(BuildContext context) async {
    print("object1");

    dio.options.baseUrl = "http://157.245.109.118";
    try {
      var params = {
        "email": "test@gmail.com",
        "password": "passwrd",
      };
      print("object");
      Response response = await dio.post("/api/v1/mobile/auth/login",
          options: Options(
              contentType: "application/json",
              headers: {"x-public-token": "Xc2KdNa53AFgVTGkTEc9FI3XOVktSWmg"}),
          data: params);

      // LoginSuccess loginSuccess = LoginSuccess.fromJson(response.data);
      //print('gjhj');
      // print(LoginSuccess.fromJson(response.data).msg);
      //   print(loginSuccess.msg);
      //   print("error");
      // LoginFail loginFail=LoginFail.fromJson(response.data);

      print(response);
    } catch (e) {
      print(e);
    }
  }
}
