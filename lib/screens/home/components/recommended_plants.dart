import 'package:flutter/material.dart';
import 'package:flutter_plant/constants.dart';
import 'package:flutter_plant/screens/details/details_screenn.dart';
import 'package:flutter_plant/screens/home/components/recommended_plant_card.dart';

class RecommendedPlants extends StatelessWidget {
  const RecommendedPlants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(right: kDefaultPadding),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendedPlantCard(title: "Samantha", country: "Russia", price: 440,
            onPress: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DetailsScreen()
              )
            );
            }, image: "assets/images/image_1.png",),
          RecommendedPlantCard(title: "Samantha", country: "Russia", price: 440,
            onPress: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DetailsScreen()
                  )
              );
            }, image: "assets/images/image_2.png",),
          RecommendedPlantCard(title: "Samantha", country: "Russia", price: 440,
            onPress: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DetailsScreen()
                  )
              );
            }, image: "assets/images/image_3.png",),
        ],
      ),
    );
  }
}
