import 'dart:convert';

import 'package:app_cats_flutter/src/models/models.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CatsProvider extends ChangeNotifier {
  String _apiKey = 'bda53789-d59e-46cd-9bc4-2936630fde39';
  String _baseUrl = 'api.thecatapi.com';

  List<NowResponseCatsModel> onDisplayCats = [];

  CatsProvider() {
    print('Cats Provider Init');
    this.getOnDisplayCats();
  }

  getOnDisplayCats() async {
    var url = Uri.https(_baseUrl, 'v1/breeds', {'_apiKey': _apiKey});
    final response = await http.get(url);

    final parsed = jsonDecode(response.body).cast<Map<String, dynamic>>();

    final List<NowResponseCatsModel> decodedData = parsed
        .map<NowResponseCatsModel>(
            (json) => NowResponseCatsModel.fromJson(json))
        .toList();

    // final List<NowResponseCatsModel> decodedData = json.decode(response.body).toJson();
    if (response.statusCode != 200) return print('error');

    print(decodedData[0].image.url);
    onDisplayCats = decodedData;
    notifyListeners();
    return onDisplayCats;
  }
}
