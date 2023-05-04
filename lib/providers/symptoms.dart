import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:task_3/models/selected_symptom.dart';
import 'package:task_3/models/symptom.dart';
import 'package:http/http.dart' as http;

class Symptoms with ChangeNotifier {
  final List<Symptom> _symptomsList = [];
  final List<SelectedSymptom> _selectedSymptoms = [];

  List<Symptom> get symptomsList => [..._symptomsList];
  List<SelectedSymptom> get selectedSymptoms => [..._selectedSymptoms];

  void addSymtomp(int group, int item) {
    bool flag = false;
    for (int i = 0; i < selectedSymptoms.length; i++) {
      // if the item is already existed then these....
      if (selectedSymptoms[i].group == group &&
          selectedSymptoms[i].item == item) {
        _symptomsList[group].subSymptoms[item].isSelct = false;
        _selectedSymptoms.removeAt(i);
        flag = true;
        notifyListeners();
        return;
      }
    }
    // if the item is new then these....
    if (flag == false) {
      _symptomsList[group].subSymptoms[item].isSelct = true;
      _selectedSymptoms.add(SelectedSymptom(group: group, item: item));
      notifyListeners();
    }
  }

  Future<void> fetchProducts() async {
    try {
      const url = 'https://api.npoint.io/30bd2c680d812dd23df1';
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final fetchData = json.decode(response.body);
        final list = fetchData['data']!['symptoms'] as List;
        _symptomsList.clear();
        for (int i = 0; i < list.length; i++) {
          _symptomsList.add(Symptom.fromMap(list[i]));
        }
      } else {
        throw const HttpException('Error Occurs while Loading!');
      }
    } catch (e) {
      throw const HttpException('Couldn\'t find the path!');
    }
  }
}
