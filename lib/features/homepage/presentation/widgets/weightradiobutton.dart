import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foods/features/repository/data/weight.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class WeightRadioButton extends StatelessWidget {
  const WeightRadioButton({
    Key? key,
    required this.selectedWeight,
    required this.value,
  }) : super(key: key);

  final StateController<Weight> selectedWeight;
  final Weight value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
            value: value,
            groupValue: selectedWeight.state,
            onChanged: (Weight? value) {
              selectedWeight.update((state) => value!);
            }),
        Text(
          value == Weight.g
              ? 'g'
              : value == Weight.oz
                  ? 'oz'
                  : 'lbs',
          style: TextStyle(fontSize: 16.sp),
        ),
      ],
    );
  }
}
