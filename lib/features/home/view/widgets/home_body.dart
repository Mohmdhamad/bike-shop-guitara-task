import 'package:flutter/material.dart';
import 'package:tasks/features/home/view/widgets/categories_widget.dart';
import 'package:tasks/features/home/view/widgets/items_list.dart';
import 'package:tasks/features/home/view/widgets/main_bike_widget.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 7),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            MainBikeWidget(),
            CategoriesWidget(),
            ItemsList(),
            SizedBox(),

          ],
        ),
      ),
    );
  }
}
