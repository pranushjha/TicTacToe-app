import 'package:flutter/material.dart';
import 'Screens/splash_screen.dart';
import 'themes/app_theme.dart';
import 'Screens/tic_tac_toe_home.dart';
import 'widgets/board_tile.dart';


void main() {
  runApp(const TicTacToeApp());
}

class TicTacToeApp extends StatelessWidget {
  const TicTacToeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tic Tac Toe',
      theme: AppTheme.lightTheme, // Use the theme from app_theme.dart
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
