import 'package:flutter/material.dart';
import 'package:flutter_basic_provider/controller/homepage1_controller.dart';
import 'package:flutter_basic_provider/page/homepage1.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Homepage1Controller(),
      child: const MyApp(),
    )
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const Homepage1()
    );
  }
}
