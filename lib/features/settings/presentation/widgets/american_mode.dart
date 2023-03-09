import 'package:foods/features/common/error/error.dart';
import 'package:foods/features/common/loader/loader.dart';
import 'package:foods/features/common/presentation/layout_design/expanded_row.dart';
import 'package:foods/features/settings/domain/functions/refresh_weight_height.dart';
import 'package:foods/features/settings/domain/functions/switch_weight_height_mode.dart';
import 'package:foods/features/settings/domain/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AmericanModeSwitch extends ConsumerWidget {
  const AmericanModeSwitch({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final weightHeightMode = ref.watch(isAmericanModeProvider);
    return ExpandedRow(flexChildrenRatio: const [
      4,
      1
    ], children: [
      Text(
        'Use feet/lbs:',
        style: TextStyle(fontSize: 16.sp),
      ),
      weightHeightMode.when(
          data: (themeMode) {
            return Switch.adaptive(
                value: themeMode,
                onChanged: (value) async => await switchHeightWeightMode(value)
                    .whenComplete(() => refreshHeightWeight(ref)));
          },
          error: (e, _) => ErrorBox(
                e: e.toString(),
              ),
          loading: () => const Loader())
    ]);
  }
}