import 'package:flutter/material.dart';
import 'route_names.dart';
import 'routes.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Netflix',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Colors.black),
        //  primarySwatch: Colors.black,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.black,
      ),
      initialRoute: RouteNames.firstScreen,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
