import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasks/core/constants/app_images.dart';
import 'package:tasks/core/constants/app_text.dart';

class MainBikeWidget extends StatelessWidget {
  const MainBikeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SvgPicture.asset(
            AppImages.mainItemBackground,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 40,
            child: Image.asset(
              AppImages.mainBike,
              width: 275,
            ),
          ),
          Positioned(
            left: 35,
            bottom: 65,
            child: Text(
              AppText.mainItemDiscount,
              style: GoogleFonts.poppins().copyWith(
                color: Colors.grey,
                fontSize: 26,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],

      ),
    );
  }
}