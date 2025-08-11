import 'package:flutter/material.dart';
import 'package:tasks/features/home/model/bike_model.dart';
import 'package:tasks/features/home/view/widgets/bike_item.dart';

class ItemsList extends StatelessWidget {
  const ItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 7,
          childAspectRatio: 0.79
        ),
        itemCount: bikes.length,
        itemBuilder: (context,index){
          return BikeItem(model:bikes[index] );
        },
      ),
    );
  }
}
