import 'package:foods/features/common/presentation/layout_design/expanded_row.dart';
import 'package:foods/features/common/presentation/layout_design/sliver_scaffold.dart';
import 'package:foods/features/homepage/domain/functions/save_to_db.dart';

import 'package:foods/features/homepage/presentation/widgets/form1.dart';
import 'package:foods/features/homepage/presentation/widgets/list_of_foods.dart';
import 'package:foods/features/homepage/presentation/widgets/search.dart';

import 'package:foods/features/repository/data/converted_foods.dart';
import 'package:foods/features/settings/domain/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NutriPick extends ConsumerWidget {
  const NutriPick({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return SliverScaffold(slivers: [
      SliverAppBar(
        centerTitle: true,
        floating: true,
        title: Text('NutriPick'),
        collapsedHeight: 20.h,
        surfaceTintColor: Theme.of(context).backgroundColor,
        backgroundColor: Theme.of(context).backgroundColor,
        flexibleSpace: Padding(
          padding: EdgeInsets.only(top: 9.h, left: 1.h, right: 1.h),
          child: SearchForm(),
        ),
      ),
      SliverToBoxAdapter(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.sp),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.black, width: 3.sp))),
              child: ExpandedRow(children: [
                Text(
                  'Category',
                  style:
                      TextStyle(fontSize: 18.sp, fontStyle: FontStyle.italic),
                ),
                Text(
                  'Name',
                  textAlign: TextAlign.right,
                  style:
                      TextStyle(fontSize: 18.sp, fontStyle: FontStyle.italic),
                )
              ]),
            ),
          ],
        ),
      ),
      const ListOfFoods(),
    ]);
  }
}
