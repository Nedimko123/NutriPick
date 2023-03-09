import 'package:flutter/material.dart';
import 'package:foods/features/common/sheets/wrap_sheet.dart';
import 'package:foods/features/repository/models/nutrient.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Future<dynamic> nutrientDescriptionSheet(
    BuildContext context, Nutrient nutrient) {
  FocusManager.instance.primaryFocus?.unfocus();
  return wrapBottomSheet(context, [
    Padding(
      padding: EdgeInsets.all(15.sp),
      child: Column(
        children: [
          Center(
              child: Padding(
            padding: EdgeInsets.only(bottom: 10.sp),
            child: Text(
              nutrient.nutrientName,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
            ),
          )),
          Text(
            nutrient.nutrientDescription,
            style: TextStyle(fontSize: 16.sp),
          ),
        ],
      ),
    )
  ]);
}
