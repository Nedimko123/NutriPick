import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foods/features/common/presentation/layout_design/sliver_scaffold.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Meal extends ConsumerWidget {
  const Meal({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return SliverScaffold(
      slivers: [
        const SliverAppBar(
          centerTitle: true,
          title: Text('Meal'),
        ),
      ],
    );
  }
}
