import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class IconCard extends StatelessWidget {
  const IconCard({Key? key, required this.image}) : super(key: key);


  final String image;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding / 2),
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      height: 62,
      width: 62,
      decoration: BoxDecoration(
          color: kBackgroundColor,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 15),
                blurRadius: 22,
                color: kPrimaryColor.withOpacity(0.22)
            ),
            BoxShadow(
                offset: const Offset(-15, -15),
                blurRadius: 20,
                color: kPrimaryColor.withOpacity(0.22)
            )
          ]
      ),
      child: SvgPicture.asset(image),
    );
  }
}
