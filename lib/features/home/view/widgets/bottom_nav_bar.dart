import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tasks/core/constants/app_images.dart';
import 'package:tasks/core/constants/colors.dart';

BottomNavigationBar botNavBar (){
  return BottomNavigationBar(
    items: [
      BottomNavigationBarItem(icon:SvgPicture.asset(AppImages.bikeIcon),label: ''),
      BottomNavigationBarItem(icon:SvgPicture.asset(AppImages.mapIcon),label: ''),
      BottomNavigationBarItem(icon:SvgPicture.asset(AppImages.cartIcon),label: ''),
      BottomNavigationBarItem(icon:Icon(Icons.person,color: AppColors.grey,),label: ''),
      BottomNavigationBarItem(icon:SvgPicture.asset(AppImages.docIcon),label: ''),
    ],
    type: BottomNavigationBarType.fixed,
    backgroundColor: AppColors.backgroundColor,

    selectedIconTheme: IconThemeData(
    ),
  );
}