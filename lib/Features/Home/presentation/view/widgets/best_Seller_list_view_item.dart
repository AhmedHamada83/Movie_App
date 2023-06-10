// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../manger/newset_book_cubit/newset_book_cubit.dart';
import 'best_seller_item_view.dart';
import 'custom_error_widget.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBookCubit,NewsetBookState>(
      builder: (context, state) {
        if (state is NewsetBookSuccess) {
  return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: GestureDetector(
              onTap: () {
                GoRouter.of(context).push('/bookViewDetails');
              },
              child: const BestSellerItem()),
        );
      },
      );
}else if(state is NewsetBookFailure){
  return CustomErrorWidget(errorMessage: state.errorMessage,);
}else{
  return const Center(child:  CircularProgressIndicator());
}
}

      
      
    );
  }
}
