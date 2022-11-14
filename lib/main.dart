import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:status_saver_app/Provider/bottom_nav_provider.dart';
import 'package:status_saver_app/Provider/getStatusProvider.dart';
import 'package:status_saver_app/Screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BottomNavProvider()),
        ChangeNotifierProvider(create: (_) => GetStatusProvider()),
      ],
      child: const MaterialApp(
        home: SplashScreen(),
      ),
    );
  }
}
