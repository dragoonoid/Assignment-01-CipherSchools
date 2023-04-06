import 'package:cipher_schools/themes/home_theme.dart';
import 'package:cipher_schools/widgets/helper%20widgets/stars.dart';
import 'package:flutter/material.dart';

class CardFeedbackItem extends StatelessWidget {
  final Map<String, String> mp;
  const CardFeedbackItem({Key? key, required this.mp}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                mp['imageUrl'] ?? '',
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  mp['name'] ?? '',
                  style: textStyleOrange2,
                ),
                Text(
                  mp['head'] ?? '',
                  style: textStyleBlack2.copyWith(fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ],
        ),
        const Spacer(),
        Text(
          mp['feedback'] ?? '',
          style: textStyleBlack3,
          maxLines: 3,
        ),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Content:',
                  style: textStyleBlack2,
                ),
                Stars(st: double.parse(mp['Content'] ?? '3'), len: 5),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'Platform:',
                  style: textStyleBlack2,
                ),
                Stars(st: double.parse(mp['Platform'] ?? '3'), len: 5)
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Mentor:',
                  style: textStyleBlack2,
                ),
                Stars(st: double.parse(mp['Mentor'] ?? '3'), len: 5),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'Community:',
                  style: textStyleBlack2,
                ),
                Stars(st: double.parse(mp['Community'] ?? '3'), len: 5)
              ],
            ),
          ],
        )
      ],
    );
  }
}
