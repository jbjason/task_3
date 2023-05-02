import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:task_3/models/selected_symptom.dart';
import 'package:task_3/models/symptom.dart';
import 'package:http/http.dart' as http;

const url = 'https://api.npoint.io/30bd2c680d812dd23df1';

class Symptoms with ChangeNotifier {
  final List<Symptom> _symptomsList = [];
  final List<SelectedSymptom> _selectedSymptoms = [];

  List<Symptom> get symptomsList => [..._symptomsList];
  List<SelectedSymptom> get selectedSymptoms => [..._selectedSymptoms];

  void addSymtomp(int group, int item) {
    bool flag = false;
    for (var element in selectedSymptoms) {
      if (element.group == group && element.item == item) {
        flag = true;
        return;
      }
    }
    if (flag == true) return;
    _selectedSymptoms.add(SelectedSymptom(group: group, item: item));
  }

  Future<void> fetchProducts() async {
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final fetchData = json.decode(response.body);
        final list = fetchData['data']!['symptoms'] as List;
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
