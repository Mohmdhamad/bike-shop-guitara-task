import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tasks/core/constants/app_images.dart';
import 'package:tasks/core/constants/colors.dart';
import 'package:tasks/core/style/text_style.dart';
import 'package:tasks/features/home/view/widgets/custom_icon_button.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 90,
      child: Row(
        spacing: 20,
        children: [
          Transform.translate(
            offset: const Offset(0,0),
            child: CustomIconButton(icon:Text('All',style: AppTextStyles.midStyle(),) , function: (){},
            color: AppColors.pressedButtonsColor,
            ),
          ),
          Transform.translate(
            offset: const Offset(0,-10),
            child: CustomIconButton(icon: SvgPicture.asset(
              AppImages.batteryIcon,
              width: 25,
              height: 25,
            ),
              function: (){},
            ),
          ),
          Transform.translate(
            offset: const Offset(0,-20),
            child: CustomIconButton(icon: SvgPicture.asset(
              AppImages.roadIcon,
              width: 25,
              height: 25,
            ),
              function: (){},
            ),
          ),
          Transform.translate(
            offset: const Offset(0,-30),
            child: CustomIconButton(icon: SvgPicture.asset(
              AppImages.unionIcon,
              width: 25,
              height: 25,
            ),
              function: (){},
            ),
          ),
          Transform.translate(
            offset: const Offset(0,-40),
            child: CustomIconButton(icon: SvgPicture.asset(
              AppImages.helmetIcon,
              width: 25,
              height: 25,
            ),
              function: (){},
            ),
          ),
        ],
      ),
    );
  }
}
