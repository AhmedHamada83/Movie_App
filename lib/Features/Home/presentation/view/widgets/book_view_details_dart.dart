import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utls/assets.dart';
import '../../../../../core/utls/styles.dart';
import 'book_actions.dart';
import 'custom_book_detailes_app_bar.dart';
import 'custom_button.dart';
import 'custom_featured_list_view_item.dart';
import 'featured_books_list_view.dart';

class BookViewDetailsBody extends StatelessWidget {
  const BookViewDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .3),
            child: AspectRatio(
              aspectRatio: 2.8 / 4,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: SvgPicture.asset(
                  AssetsData.test,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 43,
          ),
          const Text(
            'The Jungle Book',
            style: Styles.textStyle30,
          ),
          const SizedBox(
            height: 6,
          ),
          const Opacity(
            opacity: 0.7,
            child: Text(
              'Rudyard Kipling',
              style: Styles.textStyle18,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                FontAwesomeIcons.solidStar,
                size: 16,
                color: Color(0xffFFDD4F),
              ),
              SizedBox(
                width: 9,
              ),
              Text(
                '4.8',
                style: Styles.textStyle16,
              ),
              SizedBox(
                width: 9,
              ),
              Text(
                '(2390)',
                style: Styles.textStyle14,
              ),
            ],
          ),
          const SizedBox(height: 43),
          const BooksActions(),
          const SizedBox(height: 41),
          Row(
            children: const [
              Text(
                'You Can Also See',
                style: Styles.textStyle14,
              ),
            ],
          ),
          const SizedBox(height: 18),
          const SimilarBookListView(),
        ],
      ),
    );
  }
}

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 4),
              child: FeaturedListViewItem(),
            );
          }),
    );
    ;
  }
}
