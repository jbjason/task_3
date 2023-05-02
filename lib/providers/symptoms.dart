import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:task_3/models/symptom.dart';
import 'package:http/http.dart' as http;

const url = 'https://api.npoint.io/30bd2c680d812dd23df1';

class Symptoms with ChangeNotifier {
  final List<Symptom> _symptomsList = [];

  List<Symptom> get symptomsList => [..._symptomsList];

  Future<void> fetchProducts() async {
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final fetchData = json.decode(response.body);
        final list = fetchData['data']!['symptoms'] as List;
        print('list define done');
        for (int i = 0; i < list.length; i++) {
          _symptomsList.add(Symptom.fromMap(list[i]));
        }
      } else {
        throw 'Error Happens';
      }
    } catch (e) {
      rethrow;
    }
  }
}
