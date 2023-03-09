import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foods/features/navbar/data/screens.dart';
import 'package:foods/features/navbar/domain/providers.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final selectedBottomNavbarIndex =
        ref.watch(selectedBottomNavbarIndexProvider.state);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedBottomNavbarIndex.state,
          onTap: (value) => selectedBottomNavbarIndex.update((state) => value),
          items: [
            BottomNavigationBarItem(
                icon: Opacity(
                  opacity: selectedBottomNavbarIndex.state == 0 ? 1 : 0.3,
                  child: Image.asset(
                    'assets/logos/diet.png',
                    height: 20.sp,
                  ),
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Opacity(
                  opacity: selectedBottomNavbarIndex.state == 1 ? 1 : 0.3,
                  child: Image.asset(
                    'assets/logos/diet-1.png',
                    height: 20.sp,
                  ),
                ),
                label: 'Diet'),
            BottomNavigationBarItem(
                icon: Opacity(
                  opacity: selectedBottomNavbarIndex.state == 2 ? 1 : 0.3,
                  child: Image.asset(
                    'assets/logos/meal.png',
                    height: 20.sp,
                  ),
                ),
                label: 'Meal'),
            BottomNavigationBarItem(
                icon: Opacity(
                  opacity: selectedBottomNavbarIndex.state == 3 ? 1 : 0.3,
                  child: Image.asset(
                    'assets/logos/settings.png',
                    height: 20.sp,
                  ),
                ),
                label: 'Settings'),
          ]),
      body: screens[selectedBottomNavbarIndex.state],
    );
  }
}
