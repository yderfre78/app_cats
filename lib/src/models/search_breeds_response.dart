// To parse this JSON data, do
//
//     final searchResponse = searchResponseFromMap(jsonString);

import 'dart:convert';

import 'package:app_cats_flutter/src/models/now_response_cats_model.dart';

List<SearchResponse> searchResponseFromMap(String str) =>
    List<SearchResponse>.from(
        json.decode(str).map((x) => SearchResponse.fromMap(x)));

String searchResponseToMap(List<SearchResponse> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class SearchResponse {
  SearchResponse({
    required this.breeds,
    required this.id,
    required this.url,
    required this.width,
    required this.height,
  });

  List<NowResponseCatsModel>? breeds;
  String? id;
  String? url;
  int? width;
  int? height;

  factory SearchResponse.fromMap(Map<String, dynamic> json) => SearchResponse(
        breeds: List<NowResponseCatsModel>.from(json["breeds"]?? [].map((x) => x)
        ),

         
        id: json["id"],
        url: json["url"],
        width: json["width"],
        height: json["height"],
      );

  Map<String, dynamic> toMap() => {
        "breeds": List<NowResponseCatsModel>.from(breeds!.map((x) => x)),
        "id": id,
        "url": url,
        "width": width,
        "height": height,
      };
}
