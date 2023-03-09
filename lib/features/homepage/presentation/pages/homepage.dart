import 'package:foods/features/common/presentation/layout_design/sliver_scaffold.dart';
import 'package:foods/features/homepage/domain/functions/save_to_db.dart';
import 'package:foods/features/homepage/presentation/widgets/bmi_result.dart';
import 'package:foods/features/homepage/presentation/widgets/height_slider.dart';
import 'package:foods/features/homepage/presentation/widgets/weight_slider.dart';
import 'package:foods/features/settings/domain/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BMICalculator extends ConsumerWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return SliverScaffold(slivers: [
      const SliverAppBar(
        centerTitle: true,
        title: Text('NutriPick'),
      ),
      SliverToBoxAdapter(
        child: Column(
          children: [
            SizedBox(
              height: 2.h,
            ),
          ],
        ),
      )
    ]);
  }
}
