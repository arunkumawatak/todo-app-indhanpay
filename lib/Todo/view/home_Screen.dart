import 'package:api_intigration/Todo/viewModel/home_view_model.dart';
import 'package:api_intigration/utils/constant/string_const.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
Widget build(BuildContext context) {
  final vm = Provider.of<HomeViewModel>(context);
  final size = MediaQuery.of(context).size;
  final height = size.height;
  final width = size.width;

  return Scaffold(
    appBar: AppBar(title: Text(StringConst.appName), centerTitle: true),
    body: SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: width * 0.05, vertical: height * 0.02),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            StringConst.addDetail,
            style: TextStyle(fontSize: height * 0.025, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: height * 0.015),
          TextField(
            controller: vm.nameCtrl,
            decoration: InputDecoration(labelText: StringConst.name),
          ),
          SizedBox(height: height * 0.015),
          TextField(
            controller: vm.surnameCtrl,
            decoration: InputDecoration(labelText: StringConst.surName),
          ),
          SizedBox(height: height * 0.015),
          TextField(
            controller: vm.ageCtrl,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: StringConst.age),
          ),
          SizedBox(height: height * 0.015),
          TextField(
            controller: vm.positionCtrl,
            decoration: InputDecoration(labelText: StringConst.position),
          ),
          SizedBox(height: height * 0.02),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: vm.isValid() ? vm.addProfile : null,
              child: Text(StringConst.add),
            ),
          ),
          Divider(height: height * 0.04),
          Text(
            StringConst.savedProfiles,
            style: TextStyle(fontSize: height * 0.025, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: height * 0.01),
          if (vm.profiles.isEmpty)
            Text(StringConst.noData),
          for (int i = 0; i < vm.profiles.length; i++)
            Card(
              elevation: 4,
              margin: EdgeInsets.symmetric(vertical: height * 0.008),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${StringConst.name}: ${vm.profiles[i].name} ${vm.profiles[i].surname}"),
                    Text("${StringConst.age}: ${vm.profiles[i].age}"),
                    Text("${StringConst.position}: ${vm.profiles[i].position}"),
                  ],
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.delete, color: Colors.red),
                  onPressed: () => vm.deleteProfile(i),
                ),
              ),
            ),
        ],
      ),
    ),
  );
}}