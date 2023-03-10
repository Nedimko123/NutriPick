import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foods/features/common/presentation/layout_design/sliver_scaffold.dart';
import 'package:foods/features/settings/presentation/widgets/delete_history.dart';
import 'package:foods/features/settings/presentation/widgets/show_percentage.dart';
import 'package:foods/features/settings/presentation/widgets/theme_mode.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Settings extends ConsumerWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return SliverScaffold(slivers: [
      const SliverAppBar(
        centerTitle: true,
        title: Text('Settings'),
      ),
      SliverFillRemaining(
        child: Padding(
          padding: EdgeInsets.all(15.sp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: const [
                  ThemeModeSwitch(),
                  ShowPercentageSwitch(),
                ],
              ),
              const DeleteHistory(),
            ],
          ),
        ),
      )
    ]);
  }
}
