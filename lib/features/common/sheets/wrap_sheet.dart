// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

//ui element of it, widget

class WrapBottomSheet extends StatelessWidget {
  final List<Widget> children;
  const WrapBottomSheet({
    Key? key,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        Column(
          children: children,
        ),
      ],
    );
  }
}

//function to call it

wrapBottomSheet(BuildContext context, List<Widget> children) {
  return showModalBottomSheet(
      isScrollControlled: true,
      elevation: 10,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20.sp))),
      context: context,
      builder: (context) {
        return WrapBottomSheet(children: children);
      });
}
