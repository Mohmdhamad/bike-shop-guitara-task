import 'package:flutter/material.dart';
import 'package:tasks/core/constants/app_images.dart';
import 'package:tasks/core/constants/colors.dart';
import 'package:tasks/core/style/text_style.dart';
import 'package:tasks/features/home/model/bike_model.dart';
import 'package:flutter_svg/flutter_svg.dart';


class BikeItem extends StatelessWidget {
   BikeItem({super.key,required this.model});
  BikeModel model;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        alignment: Alignment.center,
        children: [
          SvgPicture.asset(AppImages.itemBackgroundSvg,
          fit: BoxFit.cover,

          ),
          Positioned(
            top: 10,
            right: 20,
            child: Icon(Icons.favorite_border_outlined,
            color: model.isFavorite ? AppColors.blue : AppColors.grey,
            ),
          ),
          Image.asset(model.image,
          fit: BoxFit.fill,
          ),
          Positioned(
            bottom: 10,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(model.name,style: AppTextStyles.midStyle(color: AppColors.grey),),
                  Text(model.model,style: AppTextStyles.titleStyle(textSize: 14),),
                  Text(model.price,style: AppTextStyles.midStyle(color: AppColors.grey),),
                ],
              ),),

        ],
      ),
    );
  }
}
