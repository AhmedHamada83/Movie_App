import 'package:flutter/material.dart';

import '../../../../Home/presentation/view/widgets/best_seller_item_view.dart';
import 'custom_search_view_body.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: const [
          CustomTextButton(),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: SearchResult(),
          ),
        ],
      ),
    );
  }
}

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: BestSellerItem(),
          );
        });
  }
}
