import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foods/features/common/error/sliver_error.dart';
import 'package:foods/features/common/loader/sliver_loader.dart';
import 'package:foods/features/common/presentation/layout_design/sliver_scaffold.dart';
import 'package:foods/features/history/data/empty_food_map.dart';
import 'package:foods/features/history/domain/functions/share_diet.dart';
import 'package:foods/features/history/domain/providers.dart';
import 'package:foods/features/history/presentation/widgets/diet_list.dart';
import 'package:foods/features/history/presentation/widgets/empty_history.dart';
import 'package:foods/features/history/presentation/widgets/nutrients.dart';
import 'package:foods/features/homepage/domain/providers.dart';
import 'package:foods/features/repository/data/nutrient.dart';
import 'package:foods/features/repository/data/weight.dart';
import 'package:foods/features/repository/models/food_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sliver_tools/sliver_tools.dart';

class DietMemory extends ConsumerWidget {
  const DietMemory({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final dietMemory = ref.watch(transactionHistoryProvider);

    final selectedIndex = ref.watch(selectedIndexProvider.state);

    return SliverScaffold(slivers: [
      const SliverAppBar(
        centerTitle: true,
        title: Text('Diet Memory'),
      ),
      dietMemory.when(
          data: (dietMemory) {
            if (dietMemory.isEmpty) {
              return const EmptyDietMemory();
            }
            Food shownListFoodNutrients = Food.fromJson(emptyFoodMap);
            for (var element in dietMemory) {
              shownListFoodNutrients =
                  shownListFoodNutrients.addWith(food: element);
            }
            return MultiSliver(
              children: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.all(15.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () => shareDiet(dietMemory),
                          child: Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            alignment: WrapAlignment.center,
                            children: [
                              const Icon(Icons.share),
                              SizedBox(
                                width: 1.w,
                              ),
                              Text(
                                'Share your diet',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                DietList(dietMemory: dietMemory.toList()),
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 3.h,
                      ),
                      //Slider
                      Container(
                        padding: EdgeInsets.only(left: 15.sp),
                        height: 5.h,
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Theme.of(context).primaryColor,
                                    width: 3.sp))),
                        width: double.infinity,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: macroOrMicroNutrients.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () =>
                                  selectedIndex.update((state) => index),
                              child: Padding(
                                padding: EdgeInsets.only(right: 15.sp),
                                child: Text(
                                  macroOrMicroNutrients[index],
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: selectedIndex.state == index
                                          ? FontWeight.bold
                                          : FontWeight.w300,
                                      color: Theme.of(context)
                                          .focusColor
                                          .withOpacity(
                                            selectedIndex.state == index
                                                ? 1
                                                : 0.5,
                                          ),
                                      decoration: selectedIndex.state == index
                                          ? TextDecoration.underline
                                          : null),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                returnDietNutrients(
                    ref: ref,
                    selectedIndex: selectedIndex.state,
                    food: shownListFoodNutrients,
                    selectedWeight: Weight.g,
                    searchWeight: 100)
              ],
            );
          },
          error: (e, _) => SliverError(e: e.toString()),
          loading: () => const SliverLoader()),
    ]);
  }
}
