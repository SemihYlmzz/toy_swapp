import 'package:flutter/material.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      // themeMode: ThemeMode.system,
      title: 'App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App Screen'),
        ),
        body: const Center(
          child: Text('Hoş Geldin'),
        ),
      ),
    );
  }
}
