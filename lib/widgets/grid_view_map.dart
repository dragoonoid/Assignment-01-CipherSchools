import 'dart:math';

import 'package:cipher_schools/themes/home_theme.dart';
import 'package:flutter/material.dart';

class GridViewMap extends StatelessWidget {
  final List<Map<String, String>> mp;
  const GridViewMap({Key? key, required this.mp}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: min(size.height / 2, 300),
          childAspectRatio: 3 / 1.5,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20),
      itemCount: mp.length,
      itemBuilder: (context, i) {
        return SizedBox(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              mp[i]['head'] ?? "empty",
              style: textStyleOrange1.copyWith(fontSize: 30),
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              mp[i]['subtitle'] ?? "empty",
              textAlign: TextAlign.center,
              style: textStyleBlack3,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            )
          ],
        ));
      },
    );
  }
}
