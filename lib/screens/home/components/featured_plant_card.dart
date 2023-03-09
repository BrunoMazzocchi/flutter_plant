import 'package:flutter/material.dart';

import '../../../constants.dart';

class FeaturedPlantCard extends StatelessWidget {
  const FeaturedPlantCard(
      {Key? key, required this.image, required this.onPress})
      : super(key: key);

  final String image;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: size.width * 0.8,
        height: 185,
        margin: const EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(image), fit: BoxFit.fitWidth,
            )),
      ),
    );
  }
}
