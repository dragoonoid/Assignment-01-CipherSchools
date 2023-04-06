import 'package:cipher_schools/themes/home_theme.dart';
import 'package:cipher_schools/utils/test_data.dart';
import 'package:flutter/material.dart';

class CategoriesSlider extends StatefulWidget {
  final List<String> s;
  const CategoriesSlider({Key? key, required this.s}) : super(key: key);

  @override
  State<CategoriesSlider> createState() => _CategoriesSliderState();
}

class _CategoriesSliderState extends State<CategoriesSlider> {
  int selected = 0;
  ScrollController cont = ScrollController();

  @override
  void dispose() {
    cont.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 30),
          height: size.height * 0.07,
          child: ListView.builder(
            controller: cont,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, i) {
              return GestureDetector(
                onTap: (() {
                  setState(() {
                    selected = i;
                  });
                }),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                    color: selected == i ? orange : Colors.grey[300],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      widget.s[i],
                      style: selected == i ? textStyleWhite3 : textStyleBlack3,
                    ),
                  ),
                ),
              );
            },
            itemCount: widget.s.length,
          ),
        ),
        const SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () {
                cont.animateTo(cont.offset-150,
                    duration: const Duration(milliseconds: 400), curve: Curves.linear);
              },
              child: const CircleAvatar(
                backgroundColor: Colors.black,
                radius: 15,
                child: Icon(Icons.chevron_left),
              ),
            ),
            const SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                cont.animateTo(cont.offset+150,
                    duration: const Duration(milliseconds: 400), curve: Curves.linear);
              },
              child:  CircleAvatar(
                backgroundColor: orange,
                radius: 15,
                child: const Icon(Icons.chevron_right,color: Colors.white,),
              ),
            )
          ],
        )
      ],
    );
  }
}
//BB0505
//B10202
//7A0000
//690000