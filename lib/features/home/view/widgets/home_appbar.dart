import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:tasks/core/constants/colors.dart';
import '../../../../core/constants/app_text.dart';
import '../../../../core/style/text_style.dart';

AppBar appBarHome(){
  return AppBar(
    backgroundColor: Colors.transparent,
    title: Text(
      AppText.appbarText,
      style: AppTextStyles.titleStyle(),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 7),
        child: Container(
          width: 44,
          decoration: BoxDecoration(
            color: AppColors.pressedButtonsColor,
            borderRadius: BorderRadius.circular(9),
          ),
          child: IconButton(onPressed: (){},
              icon: Icon(CupertinoIcons.search,
              color: AppColors.white,
                size: 25.0,
              ),),
        ),
      ),
    ],
  );
}