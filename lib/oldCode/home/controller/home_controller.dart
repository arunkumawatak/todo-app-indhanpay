// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;

// class HomeController extends GetxController {
//   RxBool isLoading = false.obs;

//   String baseUrl = "https://picsum.photos/200/300";

//   String ?actualURl;
//   String imgURl = "";
  
//   // get api
//   Future<void> getWallpaper() async {
//     try {
//       isLoading.value = true;
//       var response = await http.get(Uri.parse(baseUrl));

//       if (response.statusCode == 200) {

// // http.
// print("req ...${response.request}");
// print("body ${response.body}");


//       } else {
//         print("error001");
//       }
//     } catch (e) {
//       print("erro $e");
//     } finally {
//       isLoading.value = false;
//     }
//   }
// }
