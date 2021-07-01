import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter_application/pages/counter_page.dart';
import 'themes.dart';
// class Application extends StatefulWidget {
//   static const ROUTE_NAME = 'Application';
//   @override
//   _ApplicationState createState() => _ApplicationState();
// }
//
// class _ApplicationState extends State<Application> {
//   static const TAG = 'Application';
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: light(context),
//       darkTheme: dark(context),
//     );
//   }
// }

class CounterApp extends MaterialApp {
  const CounterApp({Key? key}): super(key: key, home: const CounterPage());
}