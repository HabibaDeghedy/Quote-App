import 'package:flutter/material.dart';
import 'package:quote_app/config/themes/app_theme.dart';
import 'package:quote_app/core/utils/app_strings.dart';
import 'package:quote_app/features/random_qoute/presentation/screens/quote_screen.dart';
class QuoteApp extends StatelessWidget {
  const QuoteApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appName,
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      home: const QuoteScreen(),
    );
  }
}
