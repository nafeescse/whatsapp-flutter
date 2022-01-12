// To parse this JSON data, do
//
//     final getAllSliders = getAllSlidersFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

GetAllSliders getAllSlidersFromJson(String str) => GetAllSliders.fromJson(json.decode(str));

String getAllSlidersToJson(GetAllSliders data) => json.encode(data.toJson());

class GetAllSliders {
  GetAllSliders({
    required this.status,
    required this.msg,
    required this.data,
  });

  String status;
  String msg;
  List<Datum> data;

  factory GetAllSliders.fromJson(Map<String, dynamic> json) => GetAllSliders(
    status: json["status"],
    msg: json["msg"],
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "msg": msg,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  Datum({
    required this.id,
    required this.sliderImage,
    required this.status,
  });

  int id;
  String sliderImage;
  String status;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    sliderImage: json["slider_image"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "slider_image": sliderImage,
    "status": status,
  };
}
