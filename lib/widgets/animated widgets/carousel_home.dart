import 'package:cipher_schools/themes/home_theme.dart';
import 'package:cipher_schools/utils/test_data.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselHome extends StatelessWidget {
  final List<Map<String, String>> mp;
  const CarouselHome({Key? key, required this.mp}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return CarouselSlider(
      items: mp.map((e) {
        return Container(
          //height: size.height*0.2,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: black),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.05,
                child: Row(
                  children: [
                    Image.asset(
                      'assets/app_icon.png',
                      fit: BoxFit.contain,
                    ),
                    const Spacer(),
                    Image.asset(
                      'assets/free.png',
                      fit: BoxFit.contain,
                    )
                  ],
                ),
              ),
              const Spacer(
                flex: 2,
              ),
              Text(
                e['head'] ?? '',
                style: textStyleWhite1,
                overflow: TextOverflow.ellipsis,
              ),
              const Spacer(
                flex: 1,
              ),
              Text(
                e['subtitle'] ?? '',
                style: textStyleWhite3,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        );
      }).toList(),
      options: CarouselOptions(
          enlargeCenterPage: true,
          autoPlay: true,
          autoPlayCurve: Curves.linear,
          aspectRatio: 1 / 2),
    );
  }
}
