
import 'dart:convert';

import 'package:api_intigration/Todo/model/home_Model.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeViewModel extends ChangeNotifier {
  final nameCtrl = TextEditingController();
  final surnameCtrl = TextEditingController();
  final ageCtrl = TextEditingController();
  final positionCtrl = TextEditingController();

  HomeViewModel() {
    nameCtrl.addListener(notifyListeners);
    surnameCtrl.addListener(notifyListeners);
    ageCtrl.addListener(notifyListeners);
    positionCtrl.addListener(notifyListeners);
  }

  List<HomeModel> _profiles = [];
  List<HomeModel> get profiles => _profiles;

  bool isValid() {
    return nameCtrl.text.isNotEmpty &&
        surnameCtrl.text.isNotEmpty &&
        positionCtrl.text.isNotEmpty &&
        int.tryParse(ageCtrl.text) != null;
  }

  void addProfile() {
    if (!isValid()) return;
    final newProfile = HomeModel(
      name: nameCtrl.text,
      surname: surnameCtrl.text,
      age: int.parse(ageCtrl.text),
      position: positionCtrl.text,
    );
    _profiles.add(newProfile);
    clearFields();
    saveProfiles();
    notifyListeners();
  }

  void deleteProfile(int index) {
    _profiles.removeAt(index);
    saveProfiles();
    notifyListeners();
  }

  void clearFields() {
    nameCtrl.clear();
    surnameCtrl.clear();
    ageCtrl.clear();
    positionCtrl.clear();
  }

  void saveProfiles() async {
    final prefs = await SharedPreferences.getInstance();
    final data = _profiles.map((e) => e.toJson()).toList();
    prefs.setString('user_profiles', jsonEncode(data));
  }

  void loadProfiles() async {
    final prefs = await SharedPreferences.getInstance();
    final data = prefs.getString('user_profiles');
    if (data != null) {
      final decoded = jsonDecode(data) as List;
      _profiles = decoded.map((e) => HomeModel.fromJson(e)).toList();
      notifyListeners();
    }
  }
}