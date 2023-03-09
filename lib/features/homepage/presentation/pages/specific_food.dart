import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foods/features/common/presentation/layout_design/sliver_scaffold.dart';
import 'package:foods/features/homepage/domain/functions/add_to_meal.dart';
import 'package:foods/features/homepage/domain/functions/save_to_db.dart';
import 'package:foods/features/homepage/presentation/widgets/form1.dart';
import 'package:foods/features/homepage/presentation/widgets/return_nutrients.dart';
import 'package:foods/features/homepage/presentation/widgets/weightRadioButton.dart';
import 'package:foods/features/repository/data/weight.dart';
import 'package:foods/features/repository/models/food_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../repository/data/nutrient.dart';
import '../../domain/providers.dart';

class SpecificFoodItem extends ConsumerWidget {
  const SpecificFoodItem({
    Key? key,
    required this.food,
  }) : super(key: key);

  final Food food;

  @override
  Widget build(BuildContext context, ref) {
    final searchWeightController = ref.watch(searchWeightControllerProvider);
    final selectedWeight = ref.watch(selectedWeightProvider.state);
    final selectedIndex = ref.watch(selectedIndexProvider.state);
    final searchWeight = ref.watch(searchWeightProvider.state);
    return SliverScaffold(
      slivers: [
        //App bar
        SliverAppBar(
          centerTitle: true,
          title: Text(food.description),
        ),

        //Other parts
        SliverToBoxAdapter(
            child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.sp, horizontal: 15.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Search for weight
              Center(
                child: Form1(
                    width: 100.w,
                    onChanged: (value) {
                      searchWeight.update((state) {
                        if (value.isNotEmpty) {
                          return double.parse(value);
                        }
                        return 100;
                      });
                    },
                    inputType: TextInputType.number,
                    label: 'Weight',
                    hintText: 'Enter a specific weight',
                    controller: searchWeightController),
              ),
              //Select g, oz, lbs
              Row(
                children: [
                  WeightRadioButton(
                    selectedWeight: selectedWeight,
                    value: Weight.g,
                  ),
                  WeightRadioButton(
                    selectedWeight: selectedWeight,
                    value: Weight.oz,
                  ),
                  WeightRadioButton(
                    selectedWeight: selectedWeight,
                    value: Weight.lbs,
                  ),
                ],
              ),
              //Name , category then
              Text(
                'Name',
                style: TextStyle(fontSize: 12.sp),
              ),
              Text(
                food.description,
                style: TextStyle(fontSize: 16.sp),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.sp),
                child: Text(
                  'Category',
                  style: TextStyle(fontSize: 12.sp),
                ),
              ),
              Text(
                food.category,
                style: TextStyle(fontSize: 16.sp),
              ),
              //add
              SizedBox(
                height: 1.h,
              ),
              InkWell(
                onTap: () async => await saveData(ref, food),
                child: Text(
                  '+ Add to diet',
                  style:
                      TextStyle(fontSize: 16.sp, fontStyle: FontStyle.italic),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              InkWell(
                onTap: () => addToMeal(ref, food),
                child: Text(
                  '+ Add to meal',
                  style:
                      TextStyle(fontSize: 16.sp, fontStyle: FontStyle.italic),
                ),
              ),
            ],
          ),
        )),
        SliverToBoxAdapter(
          child: Column(
            children: [
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
                      onTap: () => selectedIndex.update((state) => index),
                      child: Padding(
                        padding: EdgeInsets.only(right: 15.sp),
                        child: Text(
                          macroOrMicroNutrients[index],
                          style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: selectedIndex.state == index
                                  ? FontWeight.bold
                                  : FontWeight.w300,
                              color: Theme.of(context).focusColor.withOpacity(
                                    selectedIndex.state == index ? 1 : 0.5,
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
        //Nutrients
        returnNutrients(
            ref: ref,
            selectedIndex: selectedIndex.state,
            food: food,
            selectedWeight: selectedWeight.state,
            searchWeight: searchWeight.state),
      ],
    );
  }
}
