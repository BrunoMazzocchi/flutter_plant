import 'package:flutter/material.dart';
import 'package:flutter_plant/screens/home/components/text_with_custom_underline.dart';
import '../../../constants.dart';

class TitleWithMoreButton extends StatelessWidget {
  const TitleWithMoreButton({Key? key, required this.title, required this.onPress}) : super(key: key);

  final String title;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  [
          TextWithCustomUnderline(title: title),
          ElevatedButton(onPressed: onPress,
              child: const Text("More"))
        ],
      ),
    );
  }
}