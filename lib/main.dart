// ignore_for_file: depend_on_referenced_packages, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import './src/constants/themeColor.dart';
import './src/features/Authentication/presentation/authentication_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'sa.teachhorse.app.neyeeman-admin',
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'),
        Locale('ar'),
      ],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: GreenPrimaryColor,
        scaffoldBackgroundColor: YellowSecondaryColor,
      ),
      home: AuthenticationPage(),
    );
  }
}
