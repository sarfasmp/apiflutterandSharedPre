import 'package:api_sharedepfrs/model/apiModel.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ServiceProvider extends ChangeNotifier{
  Dio dio=Dio();
  Response? response;

  ServiceRequest? _serviceRequest;
  ServiceRequest? get serviceRequest => _serviceRequest;

  Future <ServiceRequest?> serviceRequestFetch() async {
    String token='eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjMwODMxMzQ4LCJqdGkiOiI4OGNiOGE0MzRmZjA0M2EyOWZhNzg5YzBjODZjZDkyOSIsInVzZXJfaWQiOjY2Mzd9.1JFRmoyRijGgECMGKmGYRx5MLf6vzdl21hF65RKSjVc';
    try{
      //dio.options.baseUrl = 'https://tayseerme.com';
      response= await dio.get('https://tayseerme.com/api/dynamic-form/',
        options: Options(
            headers: {'Authorization':'Bearer $token'}
        ),
      );
      _serviceRequest=ServiceRequest.fromJson(response!.data);
      print("API");
      print(response!.data);

      return _serviceRequest;




    } on DioError catch(e){
      print(e);



    }
    notifyListeners();
  }













}