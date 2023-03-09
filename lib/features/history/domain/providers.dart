import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foods/features/history/domain/functions/load_from_db.dart';
import 'package:foods/features/repository/models/food_model.dart';

final transactionHistoryProvider =
    FutureProvider<List<Food>>((ref) => loadData());
