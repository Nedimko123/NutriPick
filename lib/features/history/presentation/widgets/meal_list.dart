// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foods/features/common/presentation/layout_design/expanded_row.dart';
import 'package:foods/features/history/domain/functions/delete_from_provider.dart';
import 'package:foods/features/repository/models/food_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MealList extends StatelessWidget {
  final List<Food> dietMemory;
  final WidgetRef ref;
  final void Function(void Function()) setState;
  const MealList({
    Key? key,
    required this.dietMemory,
    required this.ref,
    required this.setState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: dietMemory.length,
            ((context, index) {
      return Container(
          padding: EdgeInsets.all(15.sp),
          color: index % 2 == 0 ? Theme.of(context).focusColor : null,
          child: Column(
            children: [
              ExpandedRow(
                flexChildrenRatio: const [1, 5, 1],
                children: [
                  Text(
                    '${dietMemory[index].weight}g',
                    style: TextStyle(fontSize: 16.sp),
                  ),
                  Text(
                    dietMemory[index].description,
                    style: TextStyle(fontSize: 16.sp),
                  ),
                  InkWell(
                      onTap: () => deleteMeal(index, ref, setState),
                      child: const Icon(Icons.close))
                ],
              )
            ],
          ));
    })));
  }
}
