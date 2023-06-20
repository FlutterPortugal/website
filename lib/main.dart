import 'package:flutter/material.dart';
import 'package:landing_page/public/home/home_view.dart';
import 'package:landing_page/public/public_theme.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Portugal',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: PublicTheme.themeData(context),
      builder: (context, child) {
        return ResponsiveBreakpoints.builder(child: child!, breakpoints: [
          const Breakpoint(start: 0, end: 905, name: MOBILE),
          const Breakpoint(start: 906, end: 1700, name: DESKTOP),
          const Breakpoint(start: 1701, end: double.infinity, name: '4K')
        ]);
      },
      home: const HomeView(),
    );
  }
}
