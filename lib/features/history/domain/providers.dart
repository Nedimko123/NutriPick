import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foods/features/history/domain/functions/load_from_db.dart';
import 'package:foods/features/homepage/domain/models/bmi_model.dart';

final transactionHistoryProvider =
    FutureProvider<List<BMIModel>>((ref) => loadData());
final isGraphProvider = StateProvider<bool>((ref) => false);
