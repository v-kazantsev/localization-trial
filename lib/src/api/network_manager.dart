import 'dart:async';
import 'dart:convert';
import '../models/codes_model.dart';
import 'package:flutter/services.dart';

class NetworkManager {
  static Future<dynamic> readJson() async {
    final String response = await rootBundle.loadString('assets/data/mockData.json');
    Iterable data = await json.decode(response);
    return data.map((item) => CodesModel.fromJson(item)).toList();
  }
}