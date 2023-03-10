import 'package:foods/features/settings/domain/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'features/introduction_screen/presentation/pages/intro_main.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final themeMode = ref.watch(isDarkModeProvider);
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          title: 'NutriPick',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              useMaterial3: true, colorSchemeSeed: Colors.greenAccent),
          darkTheme: ThemeData(
              useMaterial3: true,
              colorSchemeSeed: Colors.greenAccent,
              brightness: Brightness.dark),
          themeMode: themeMode.maybeWhen(
              data: (themeMode) => themeMode ? ThemeMode.dark : ThemeMode.light,
              orElse: () => ThemeMode.dark),
          home: const IntroductionScreenMain(),
        );
      },
    );
  }
}
