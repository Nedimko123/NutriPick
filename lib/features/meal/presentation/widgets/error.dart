import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class EmptyMeal extends StatelessWidget {
  const EmptyMeal({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.all(15.sp),
        child: Column(
          children: [
            Image.asset(
              'assets/images/surprised.png',
              height: 50.sp,
            ),
            Text(
              'Nothing added to the Meal yet...\nGo to Home and pick a Food to Add!',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.sp),
            )
          ],
        ),
      ),
    );
  }
}
