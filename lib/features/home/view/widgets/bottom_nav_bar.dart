import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tasks/core/constants/app_images.dart';
import '../../view_model/cubit/app_cubit.dart';
import '../../view_model/cubit/app_states.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavCubit, BottomNavState>(
      builder: (context, state) {
        int currentIndex = 0;
        if (state is BottomNavTabChanged) {
          currentIndex = state.currentIndex;
        }

        return Container(
          height: 80,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImages.bottomNavBackg),
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildNavItem(context, 0, AppImages.bikeIcon, currentIndex),
                _buildNavItem(context, 1, AppImages.mapIcon, currentIndex),
                _buildNavItem(context, 2, AppImages.cartIcon, currentIndex),
                _buildNavItem(context, 3, AppImages.helmetIcon, currentIndex),
                _buildNavItem(context, 4, AppImages.docIcon, currentIndex),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildNavItem(BuildContext context, int index, String iconPath, int currentIndex) {
    final isSelected = index == currentIndex;

    return GestureDetector(
      onTap: () => context.read<BottomNavCubit>().changeTab(index),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        transform: Matrix4.translationValues(0, isSelected ? -15 : 0, 0),
        child: Stack(
          alignment: Alignment(-.2,-.7),
          children: [
            if (isSelected)
              Container(
                width: 85,
                height: 85,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppImages.botNavButtonBg),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            SvgPicture.asset(
              iconPath,
              width: 24,
              height: 24,
              colorFilter: ColorFilter.mode(
                isSelected ? Colors.white : Colors.grey,
                BlendMode.srcIn,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
