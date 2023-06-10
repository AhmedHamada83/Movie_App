import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utls/assets.dart';

class CustomAppBr extends StatelessWidget {
  const CustomAppBr({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24, left: 24, top: 30, bottom: 10),
      child: Row(
        children: [
          SvgPicture.asset(
            AssetsData.logo,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push('/searchView');
              },
              icon: const FaIcon(FontAwesomeIcons.magnifyingGlass))
        ],
      ),
    );
  }
}
