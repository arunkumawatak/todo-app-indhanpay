// import 'package:api_intigration/features/todo_funtionality/home/controller/home_provide.dart';
// import 'package:api_intigration/utils/common/common_widgets.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     final providerUser = Provider.of<HomeProvide>(context);
//     return Scaffold(
//       body: Consumer<HomeProvide>(
//         builder: (context, homeProvide, child) {
//           return Column(
//             children: [
//               TextFormField(
//                 controller: providerUser.namecontroller,
//                 decoration: commonInputDecoration(hintText: "Name"),
//               ),
//               TextFormField(
//                 controller: providerUser.surnamecontroller,

//                 decoration: commonInputDecoration(hintText: "Surname"),
//               ),

//               // Add data
//               ElevatedButton(
//                 onPressed: () {
//                   providerUser.addData();
//                 },
//                 child: Text("Add Info."),
//               ),
//               //Delete Data
//               ElevatedButton(
//                 onPressed: () {
//                   providerUser.deleteData();
//                 },
//                 child: Text("Delete Info."),
//               ),

//               //show Data
//               Text(providerUser.userName),
//               Text(providerUser.useSurname),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }


// /**  */