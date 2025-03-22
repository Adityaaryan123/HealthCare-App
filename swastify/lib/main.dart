import 'package:flutter/material.dart';
import 'package:swastify/config/app_routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:swastify/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      initialRoute: AppRoutes.login,
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}
