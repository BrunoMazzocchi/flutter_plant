import 'package:flutter/material.dart';
import 'package:flutter_plant/constants.dart';
import 'package:flutter_plant/screens/home/components/recommended_plants.dart';
import 'package:flutter_plant/screens/home/components/title_with_more_button.dart';

import 'featured_plants.dart';
import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Total size of the screen
    Size size = MediaQuery.of(context).size;
    // Enables scrolling
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(
            size: size,
          ),
          TitleWithMoreButton(title: "Recommended", onPress: () {}),
          // It will cover 40% of the screen
          const RecommendedPlants(),
          TitleWithMoreButton(title: "Featured", onPress: () {}),
          const FeaturedPlants(),
          const SizedBox(height: kDefaultPadding,)
        ],
      ),
    );
  }
}

