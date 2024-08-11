import 'package:flutter/material.dart';
import 'package:online_service_homepage/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return MediaQuery(
          // Overrides the system's text scaling so every fontSizes set will
          // be the same as is in different screens sizes..
          data: MediaQuery.of(context)
              .copyWith(textScaler: const TextScaler.linear(1.0)),
          child: child!,
        );
      },
      title: 'Harmony',
      theme: ThemeData(fontFamily: 'Poppins'),
      initialRoute: '',
      routes: {
        '': (context) => const Home(),
      },
    );
  }
}
