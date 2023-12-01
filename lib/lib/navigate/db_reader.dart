import 'package:flutter/services.dart';

class DataReader {
  Future<String> readData() async {
    String data = '';
    try {
      data = await rootBundle.loadString('assets/data/data.json');
      return data;
    } catch (e) {
      return e.toString();
    }
  }
}
