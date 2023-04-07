import 'package:cipher_schools/themes/home_theme.dart';
import 'package:cipher_schools/utils/test_data.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselCourses extends StatefulWidget {
  final List<Map<String, String>> mp;
  const CarouselCourses({Key? key, required this.mp}) : super(key: key);

  @override
  State<CarouselCourses> createState() => _CarouselCoursesState();
}

class _CarouselCoursesState extends State<CarouselCourses> {
  int currentIndex = 0;
  CarouselController? cont = CarouselController();
  @override
  void dispose() {
    cont=null;
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          child: CarouselSlider(
            carouselController: cont,
            items: widget.mp.map((e) {
              return Stack(
                children: [
                  Image(
                    width: double.infinity,
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      e['image'] ?? "",
                    ),
                    height: size.height,
                  ),
                  Container(
                    width: double.infinity,
                    height: size.height,
                    decoration: const BoxDecoration(gradient: gradient),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    alignment: Alignment.bottomLeft,
                    width: size.width * 0.5,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          e['head'] ?? '',
                          maxLines: 3,
                          style: textStyleWhite2,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white30),
                          padding: const EdgeInsets.all(5),
                          child: Text(
                            e['tag'] ?? '',
                            overflow: TextOverflow.ellipsis,
                            style: textStyleWhite3,
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CircleAvatar(
                              backgroundColor: black,
                              radius: 12,
                              backgroundImage:
                                  NetworkImage(e['mentorUrl'] ?? ''),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              e['mentor'] ?? '',
                              overflow: TextOverflow.ellipsis,
                              style: textStyleWhite3,
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                          decoration: BoxDecoration(
                            color: orange,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            e['buttonText'] ?? '',
                            style: textStyleWhite3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }).toList(),
            options: CarouselOptions(
                autoPlay: true,
                autoPlayCurve: Curves.linear,
                enlargeCenterPage: false,
                onPageChanged: ((index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                }),
                viewportFraction: 1),
          ),
        ),
        Positioned(
          bottom: 10,
          left: 0,
          right: 0,
          child: SizedBox(
            height: 30,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < widget.mp.length; i++)
                    GestureDetector(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.circle,
                          size: 10,
                          color: i == currentIndex ? orange : Colors.white30,
                        ),
                      ),
                    )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
