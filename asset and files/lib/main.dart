
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_employment_managment_system/firebase_options.dart';
import 'package:flutter_application_employment_managment_system/loginpage.dart';
import 'package:flutter_application_employment_managment_system/views/home.dart';

import 'views/signupPage.dart';


void main() async
{
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
   options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EMS',
      routes: {
        '/':(context) => const HomePage(),
        '/add':(context) => const AddUser(),
         '/login': (context) => const LoginScreen(),
        '/signup': (context) => const AddUser(),
        
      } ,
      initialRoute: '/',

    );
  }
}

