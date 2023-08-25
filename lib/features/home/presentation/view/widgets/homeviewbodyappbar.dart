import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utliz/assets.dart';
import '../../../../../core/utliz/routers.dart';

class HomeViewBodyAppBar extends StatelessWidget {
  const HomeViewBodyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
      child: Row(
        children: [
          Hero(
              tag: "Logo",
              child: Image.asset(
                Assets.imagesLogo,
                width: 200,
                height: 40,
              )),
          const Spacer(),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push(AppRouter.kSearchPath);
              },
              icon: const Icon(FontAwesomeIcons.magnifyingGlass))
        ],
      ),
    );
  }
}
