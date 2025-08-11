import 'package:flutter/material.dart';
import '../../../../core/constants/colors.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    super.key,
    required this.icon,
    this.color = AppColors.buttonsBackground,
    required this.function
  });
  final Function function;
  final Widget icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(9),
      ),
      child: IconButton(
        onPressed: () {
          function();
        },
        icon: icon,
      ),
    );
  }
}
