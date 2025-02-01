import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:portfolio_app/providers/theme_provider.dart';
import 'package:portfolio_app/screens/home_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider<ThemeProvider>(
      create: (_) => ThemeProvider(),
      child: const PortfolioApp(),
    ),
  );
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio App',
      theme: Provider.of<ThemeProvider>(context).getTheme(),
      home: HomeScreen(),
    );
  }
}
