import 'dart:async';
import 'dart:convert';
import '../models/codes_model.dart';
import 'package:flutter/services.dart';

class NetworkManager {
  static Future<List<CodesModel>> readJson() async {
    final String response = await rootBundle.loadString('assets/data/mockData.json');
    final List<dynamic> data = await json.decode(response);
    return data.map((item) => CodesModel.fromJson(item)).toList();
  }
}