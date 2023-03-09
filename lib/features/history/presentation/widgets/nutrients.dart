import 'package:flutter/material.dart';
import 'package:foods/features/common/presentation/layout_design/expanded_row.dart';
import 'package:foods/features/homepage/presentation/widgets/sheets/nutrient_description_sheet.dart';
import 'package:foods/features/repository/data/nutrient_types.dart';
import 'package:foods/features/repository/data/weight.dart';
import 'package:foods/features/repository/models/food_model.dart';
import 'package:foods/features/repository/models/nutrient.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

SliverList returnDietNutrients(
    {required int selectedIndex,
    required Food food,
    required Weight selectedWeight,
    required double searchWeight}) {
  List<Nutrient> list = macroNutrients(food: food);

  double multiplyBy = 1;

  if (selectedWeight == Weight.g) {
    multiplyBy = 0.01 * searchWeight;
  } else if (selectedWeight == Weight.oz) {
    multiplyBy = 0.01 * searchWeight * 28.35;
  } else {
    multiplyBy = 0.01 * searchWeight * 453.6;
  }

  if (selectedIndex == 1) {
    list = vitamins(food: food);
  } else if (selectedIndex == 2) {
    list = minerals(food: food);
  } else if (selectedIndex == 3) {
    list = stimulants(food: food);
  } else if (selectedIndex == 4) {
    list = fattyAcids(food: food);
  }
  return SliverList(
      delegate: SliverChildBuilderDelegate(
    childCount: list.length,
    (context, index) {
      final Nutrient nutrient = list[index];

      return InkWell(
        onTap: () => nutrientDescriptionSheet(context, nutrient),
        child: Container(
          decoration: BoxDecoration(
            color: index % 2 == 1 ? Theme.of(context).focusColor : null,
          ),
          padding: EdgeInsets.symmetric(vertical: 15.sp, horizontal: 15.sp),
          child: ExpandedRow(
            flexChildrenRatio: const [2, 1],
            children: [
              Text(
                nutrient.nutrientName,
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 16.sp),
              ),
              if (nutrient.nutrientLimit == null)
                Text(
                  '${nutrient.nutrientValue.toStringAsFixed(1)}${nutrient.nutrientMeasurementType}',
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 16.sp),
                ),
              if (nutrient.nutrientLimit != null)
                Text(
                  '${(100 * nutrient.nutrientValue / nutrient.nutrientLimit!).toStringAsFixed(1)}%',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: nutrient.isReverseLimit == null
                        ? (nutrient.nutrientValue > nutrient.nutrientLimit!
                            ? Colors.green
                            : Colors.red)
                        : (nutrient.nutrientValue < nutrient.nutrientLimit!
                            ? Colors.green
                            : Colors.red),
                  ),
                ),
            ],
          ),
        ),
      );
    },
  ));
}
