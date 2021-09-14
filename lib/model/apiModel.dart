import 'dart:convert';
import 'package:flutter/material.dart';

// class LoginSuccess {
//   bool? error;
//   String? msg;
//   String? data;
//
//   LoginSuccess({this.error, this.msg, this.data});
//
//   LoginSuccess.fromJson(Map<String, dynamic> json) {
//     error = json['error'];
//     msg = json['msg'];
//     data = json['data'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['error'] = this.error;
//     data['msg'] = this.msg;
//     data['data'] = this.data;
//     return data;
//   }
// }
//
// //
// LoginFail loginFailFromJson(String str) => LoginFail.fromJson(json.decode(str));
//
// String loginFailToJson(LoginFail data) => json.encode(data.toJson());
//
// class LoginFail {
//   LoginFail({
//     this.error,
//     this.errors,
//   });
//
//   bool? error;
//   List<Error>? errors;
//
//   factory LoginFail.fromJson(Map<String, dynamic> json) {
//     return LoginFail(
//     error: json["error"],
//     errors: List<Error>.from(json["errors"].map((x) => Error.fromJson(x))),
//   );
//   }
//
//   Map<String, dynamic> toJson() => {
//     "error": error,
//     "errors": List<dynamic>.from(errors!.map((x) => x.toJson())),
//   };
// }
//
// class Error {
//   Error({
//     this.msg,
//   });
//
//   String? msg;
//
//   factory Error.fromJson(Map<String, dynamic> json) => Error(
//     msg: json["msg"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "msg": msg,
//   };
// }
//==============================================================================

ServiceRequest serviceRequestFromJson(String str) =>
    ServiceRequest.fromJson(json.decode(str));

String serviceRequestToJson(ServiceRequest data) => json.encode(data.toJson());

class ServiceRequest {
  ServiceRequest({
    this.resultCode,
    this.message,
    this.data,
    this.error,
  });

  int? resultCode;
  String? message;
  List<ServiceDataList>? data;
  String? error;

  factory ServiceRequest.fromJson(Map<String, dynamic> json) => ServiceRequest(
    resultCode: json["resultCode"],
    message: json["message"],
    data: List<ServiceDataList>.from(
        json["data"].map((x) => ServiceDataList.fromJson(x))),
    error: json["error"],
  );

  Map<String, dynamic> toJson() => {
    "resultCode": resultCode,
    "message": message,
    "data": List<dynamic>.from(data!.map((x) => x.toJson())),
    "error": error,
  };
}

class ServiceDataList {
  ServiceDataList({
    this.title,
    this.titleAr,
    this.id,
  });

  String? title;
  String? titleAr;
  String? id;

  factory ServiceDataList.fromJson(Map<String, dynamic> json) =>
      ServiceDataList(
        title: json["title"],
        titleAr: json["title_ar"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
    "title": title,
    "title_ar": titleAr,
    "id": id,
  };
}