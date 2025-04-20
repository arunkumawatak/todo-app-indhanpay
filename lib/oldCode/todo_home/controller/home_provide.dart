// import 'package:api_intigration/main.dart';
// import 'package:flutter/material.dart';

// class HomeProvide extends ChangeNotifier {
//   TextEditingController namecontroller = TextEditingController();
//   TextEditingController surnamecontroller = TextEditingController();

//   String _userName = "";
//   String _userSurname = "";
//   String get useSurname => _userSurname;
//   String get userName => _userName;
//   final formKey = GlobalKey<FormState>();
//   void addData() {
//     preferences?.setString("userName", namecontroller.text);
//     preferences?.setString("userSurname", surnamecontroller.text);

//     _userName = preferences?.getString("userName") ?? "";
//     _userSurname = preferences?.getString("userSurname") ?? "";

//     notifyListeners();

//     // if (formKey.currentState!.validate()) {

//     // }
//   }

//   void deleteData() {
//     preferences?.clear();

//     _userName = "";
//     _userSurname = "";

//     notifyListeners();
//   }
// }
