import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:tasks/core/constants/app_images.dart';
import 'package:tasks/features/home/view/widgets/bottom_nav_bar.dart';
import 'package:tasks/features/home/view/widgets/home_appbar.dart';
import 'package:tasks/features/home/view/widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarHome(),
      bottomNavigationBar: botNavBar(),
      body: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Positioned(
            bottom: - 50,
            right: -25,
            child: Image.asset(AppImages.backgroundRec,
            fit: BoxFit.cover,),
          ),
          HomeBody(),

        ],
      ),
    );
  }
}
