import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foods/features/common/error/error.dart';
import 'package:foods/features/common/loader/loader.dart';
import 'package:foods/features/common/presentation/layout_design/expanded_row.dart';
import 'package:foods/features/settings/domain/functions/switch_percentage.dart';
import 'package:foods/features/settings/domain/providers.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ShowPercentageSwitch extends ConsumerWidget {
  const ShowPercentageSwitch({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final showPecentage = ref.watch(showNutrientPercentageProvider);
    return ExpandedRow(flexChildrenRatio: const [
      4,
      1
    ], children: [
      Text(
        'Show daily nutrient percentage:',
        style: TextStyle(fontSize: 16.sp),
      ),
      showPecentage.when(
          data: (themeMode) {
            return Switch.adaptive(
                value: themeMode,
                onChanged: (value) async =>
                    await switchNutrientPercentage(value).whenComplete(
                        () => ref.invalidate(showNutrientPercentageProvider)));
          },
          error: (e, _) => ErrorBox(
                e: e.toString(),
              ),
          loading: () => const Loader())
    ]);
  }
}
