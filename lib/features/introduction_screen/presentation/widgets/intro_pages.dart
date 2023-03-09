import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

List<PageViewModel> pages = [
  PageViewModel(
    title: "NutriPick",
    body:
        "Introducing our comprehensive nutrition app that allows you to create a perfectly balanced diet tailored to your individual needs. With a vast database of over thousands of foods, you can easily browse and select the ingredients you love to build your meals.",
    image: Image.asset(
      'assets/images/dinner.png',
      height: 55.sp,
    ),
  ),
  PageViewModel(
    title: "Nutrients",
    body:
        "Our app goes beyond just listing the nutritional values of calories, fat, and protein. It displays the levels of over 60 essential vitamins and minerals, giving you a comprehensive understanding of your diet's nutrient content.",
    image: Image.asset(
      'assets/images/eating.png',
      height: 55.sp,
    ),
  ),
  PageViewModel(
    title: "Diet",
    body:
        "Add foods to your diet memory to create a personalized list of your favorite ingredients - perfect for people who have specific dietary requirements or food preferences.",
    image: Image.asset(
      'assets/images/fruits.png',
      height: 55.sp,
    ),
  ),
  PageViewModel(
    title: "Meal",
    body:
        "Create a temporary meal to calculate the nutritional values of a specific meal or share it with friends.",
    image: Image.asset(
      'assets/images/cherry.png',
      height: 55.sp,
    ),
  ),
  PageViewModel(
    title: "Settings",
    body: "Choose between dark and light mode for optimal viewing experience",
    image: Image.asset(
      'assets/images/light-bulb.png',
      height: 55.sp,
    ),
  )
];
