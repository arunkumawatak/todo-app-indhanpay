import 'package:api_intigration/Todo/view/home_Screen.dart';
import 'package:api_intigration/Todo/viewModel/home_view_model.dart';
import 'package:api_intigration/utils/constant/string_const.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeViewModel()..loadProfiles()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: StringConst.appName,
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 8,
          ),
        ),
      ),
      home: HomeScreen(),
    );
  }
}

///-------------------Old Code----------------------------//




// import 'package:api_intigration/features/home/view/home_Screen.dart';
// import 'package:api_intigration/features/todo_funtionality/home/controller/home_provide.dart';
// import 'package:api_intigration/features/todo_funtionality/home/view/home_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// //global variable
// SharedPreferences? preferences;

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();

//   preferences = await SharedPreferences.getInstance();

//   runApp(
//     ChangeNotifierProvider(create: (context) => HomeProvide(), child: MyApp()),
//   );
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//  
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(home: HomeScreen());
//   }
// }


//hr@indhanpay.com


