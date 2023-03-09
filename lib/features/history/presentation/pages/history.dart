import 'package:foods/features/common/error/sliver_error.dart';
import 'package:foods/features/common/loader/sliver_loader.dart';
import 'package:foods/features/common/presentation/layout_design/sliver_scaffold.dart';
import 'package:foods/features/history/domain/providers.dart';

import 'package:foods/features/history/presentation/widgets/bmi_list.dart';
import 'package:foods/features/history/presentation/widgets/switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BMIHistory extends ConsumerWidget {
  const BMIHistory({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final bmiModels = ref.watch(transactionHistoryProvider);
    return SliverScaffold(slivers: [
      const SliverAppBar(
        centerTitle: true,
        title: Text('BMI History'),
      ),
      const SwitchGraph(),
      bmiModels.when(
          data: (bmiModels) {
            return BMIList(bmiModels: bmiModels.reversed.toList());
          },
          error: (e, _) => SliverError(e: e.toString()),
          loading: () => const SliverLoader()),
    ]);
  }
}
