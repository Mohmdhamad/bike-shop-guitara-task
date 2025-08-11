import 'package:flutter/material.dart';
import 'package:tasks/core/constants/app_images.dart';

class CustomBottomNavButton extends StatelessWidget {
  const CustomBottomNavButton({
    super.key,
    required this.icon,
    required this.function
  });
  final Function function;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(AppImages.bottomNavBackg,
        fit: BoxFit.fill,
        ),
        IconButton(
          onPressed: () {
            function();
          },
          icon: icon,
        ),
      ],
    );
  }
}
