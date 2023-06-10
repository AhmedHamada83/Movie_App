import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../constant.dart';
import '../../../../../core/utls/assets.dart';
import '../../../../../core/utls/styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.8 / 4,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(8),
              ),
              child: SvgPicture.asset(
                AssetsData.test,
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    'Harry Potter and the Goblet of Fire ',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle20.copyWith(fontFamily: kGt),

                    //overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                const Text(
                  'J.K. Rowling',
                  style: Styles.textStyle14,
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    Text(
                      '19.99 €',
                      style: Styles.textStyle20
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    const Icon(
                      FontAwesomeIcons.solidStar,
                      color: Color(0xffFFDD4F),
                    ),
                    const SizedBox(
                      width: 9,
                    ),
                    const Text(
                      '4.8',
                      style: Styles.textStyle16,
                    ),
                    const SizedBox(
                      width: 9,
                    ),
                    const Text(
                      '(2390)',
                      style: Styles.textStyle14,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
