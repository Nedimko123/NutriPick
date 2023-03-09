import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foods/features/homepage/domain/providers.dart';
import 'package:foods/features/homepage/presentation/widgets/form1.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SearchForm extends ConsumerWidget {
  const SearchForm({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final controller = ref.watch(searchTextEditingProvider);
    final searchText = ref.watch(searchedTextProvider.state);
    return Form1(
      onChanged: (value) {
        searchText.update((state) => value);
      },
      hintText: 'Search for food',
      padding: EdgeInsets.zero,
      suffixIcon: Padding(
        padding: EdgeInsets.only(right: 3.w),
        child: searchText.state.isEmpty
            ? const Icon(Icons.search)
            : InkWell(
                onTap: () {
                  controller.clear();
                  searchText.update((state) => '');
                },
                child: const Icon(Icons.close)),
      ),
      controller: controller,
    );
  }
}
