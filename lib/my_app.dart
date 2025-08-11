import 'package:flutter/material.dart';
import 'package:tasks/core/constants/colors.dart';
import 'package:tasks/features/home/view/screen/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: HomeScreen(),
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.backgroundColor,
          textTheme: GoogleFonts.poppinsTextTheme(),
        ),
        debugShowCheckedModeBanner: false,
    );
  }
}
