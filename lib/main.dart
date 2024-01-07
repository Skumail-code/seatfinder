import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seatfinder/HomeScreen/home_screen.dart';
import 'package:seatfinder/provider/selection_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SelectionButtonProvider()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SelectionButtonPage(),
      ),
    );
  }
}
