import 'package:flutter/material.dart';

import '../../../constants.dart';

class RecommendedPlantCard extends StatelessWidget {
  const RecommendedPlantCard({Key? key, required this.image, required this.title, required this.country, required this.price, required this.onPress}) : super(key: key);

  final String image, title, country;
  final int price;
  final  VoidCallback onPress;

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return  Container(
      margin: const EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5),
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: onPress,
            child: Container(
                padding: const EdgeInsets.all(kDefaultPadding / 2),
                decoration: BoxDecoration(color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23),),
                    ],
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)
                    )),
                child: Row(
                  children: [
                    RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "$title\n".toUpperCase(),
                              style: Theme.of(context).textTheme.labelLarge),
                          TextSpan(
                              text: country.toUpperCase(),
                              style: TextStyle(
                                color: kPrimaryColor.withOpacity(0.5),
                              ))
                        ])),
                    const Spacer(),
                    Text("\$$price",
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge
                            ?.copyWith(color: kPrimaryColor)),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
