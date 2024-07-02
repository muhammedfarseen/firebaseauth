import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testing_applicaation/authentication/forget_screen.dart';
import 'package:testing_applicaation/firebase_options.dart';
import 'package:testing_applicaation/provider.dart';

void main() async {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    runApp(const MyApp());
  }, (error,stack){
   // FirebaseException(plugin: plugin)
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => providerdata(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(),
        home: PhoneAuthScreen(),
      ),
    );
  }
}
