import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_profile_app/utils_class.dart';
import 'pages/home_page.dart';

Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: Utils.messengerKey,
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Profile App',
      theme: ThemeData(
          primarySwatch: Colors.indigo
      ),
      home: const HomePage(),
    );
  }
}