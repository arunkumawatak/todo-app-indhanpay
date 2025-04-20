// import 'package:api_intigration/features/home/controller/home_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   late String imgURl;
//   @override
//   void initState() {
//     controller.getWallpaper();
//     super.initState();
//   }

//   final controller = Get.put(HomeController());
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Container(
//             height: 200,
//             width: 200,
//             child:
//                 controller.isLoading.value
//                     ? CircularProgressIndicator()
//                     : Center(
//                       child:
//                           controller.imgURl == ""
//                               ? Icon(Icons.image)
//                               : Image.network(controller.imgURl),
//                     ),
//           ),

//           // ElevatedButton(
//           //   onPressed: () {
//           //     controller.getWallpaper();
//           //   },
//           //   child: Text("Test"),
//           // ),
//         ],
//       ),
//     );
//   }
// }
