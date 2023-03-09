import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foods/features/common/presentation/layout_design/expanded_row.dart';
import 'package:foods/features/homepage/domain/providers.dart';
import 'package:foods/features/homepage/presentation/pages/specific_food.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ListOfFoods extends ConsumerWidget {
  const ListOfFoods({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final foods = ref.watch(foodsProvider.state);
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: foods.state.length,
            ((context, index) {
      return InkWell(
        onTap: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => SpecificFoodItem(food: foods.state[index]))),
        child: Container(
          decoration: BoxDecoration(
              color: index % 2 == 0 ? Theme.of(context).focusColor : null),
          padding: EdgeInsets.all(15.sp),
          child: ExpandedRow(
            children: [
              Text(
                foods.state[index].category,
                style: TextStyle(fontSize: 16.sp),
              ),
              Text(
                foods.state[index].description,
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 16.sp),
              ),
            ],
          ),
        ),
      );
    })));
  }
}
