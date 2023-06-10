import 'package:booklyapp/Features/Home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_error_widget.dart';
import 'custom_featured_list_view_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * .3,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 4),
            child: FeaturedListViewItem(),
          );
        }),
  );
}else if(state is FeaturedBooksFailure){
  return CustomErrorWidget(errorMessage: state.errorMessage,);
}else{
  return const Center(child:  CircularProgressIndicator());
}
      },
    );
  }
}
