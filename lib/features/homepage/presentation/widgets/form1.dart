import 'dart:io';

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Form1 extends StatelessWidget {
  final TextEditingController controller;
  final double? height;
  final double? width;
  final EdgeInsets padding;
  final String? label;
  final bool rounded;
  final String hintText;
  final TextInputType inputType;

  final String? Function(String?)? validator;
  final TextStyle? textStyle;
  final String? suffixText;
  final Widget? suffixIcon;
  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;
  final bool enabled;
  const Form1({
    Key? key,
    required this.controller,
    this.label,
    this.height,
    this.width,
    this.padding = EdgeInsets.zero,
    this.rounded = true,
    this.hintText = 'Enter data',
    this.inputType = TextInputType.text,
    this.validator,
    this.textStyle,
    this.onChanged,
    this.suffixText,
    this.suffixIcon,
    this.onFieldSubmitted,
    this.enabled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Platform.isAndroid ? EdgeInsets.only(bottom: 1.h) : null,
      width: width != null ? width! : 90.w,
      height: height != null ? height! : 8.h,
      padding: padding,
      decoration: BoxDecoration(color: Theme.of(context).backgroundColor),
      child: TextFormField(
        enabled: enabled,
        minLines: 1,
        maxLines: 1,
        textAlign: TextAlign.left,
        keyboardType: inputType,
        textCapitalization: TextCapitalization.none,
        textAlignVertical: TextAlignVertical.center,
        onChanged: onChanged,
        onFieldSubmitted: onFieldSubmitted,
        validator: validator ??
            ((value) {
              if (value != null && value.length < 3) {
                return 'Enter min 3 characters';
              } else {
                return null;
              }
            }),
        controller: controller,
        decoration: InputDecoration(
          suffixIconConstraints:
              const BoxConstraints(minWidth: 0, minHeight: 0),
          suffixIcon: suffixIcon ??
              (suffixText != null
                  ? Padding(
                      padding: EdgeInsets.only(right: 15.sp),
                      child: Text(
                        suffixText!,
                        style: TextStyle(fontSize: 12.sp),
                      ),
                    )
                  : null),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelText: label,
          floatingLabelStyle: TextStyle(fontSize: 12.sp),
          labelStyle: TextStyle(fontSize: 12.sp),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.sp)),
              borderSide: BorderSide(
                color: Theme.of(context).primaryColor,
              )),
          enabled: true,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.sp)),
              borderSide: BorderSide(
                color: Theme.of(context).primaryColor,
              )),
          hintText: hintText,
        ),
      ),
    );
  }
}
