import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foods/features/introduction_screen/domain/functions/is_intro_shown.dart';

final isIntroShownProvider = FutureProvider<bool>((ref) => isIntroShown());
