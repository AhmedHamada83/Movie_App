import 'package:booklyapp/Features/Home/presentation/view/widgets/book_view_details_dart.dart';
import 'package:flutter/material.dart';

class BookViewDetails extends StatelessWidget {
  const BookViewDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: BookViewDetailsBody(),
      ),
    );
  }
}
