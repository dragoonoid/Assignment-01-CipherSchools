import 'package:cipher_schools/utils/test_data.dart';
import 'package:flutter/material.dart';

class Stars extends StatelessWidget {
  final double st;
  final int len;
  const Stars({Key? key, required this.st, required this.len})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, i) {
          int pos = i + 1;
          if (pos == 6) {
            return const Center(
              child: Text(
                'Ratings',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            );
          }
          if (pos <= st) {
            return Icon(
              Icons.star,
              color: orange,
              size: 20,
            );
          } else if (pos > st && pos - st >= 1) {
            return Icon(
              Icons.star_border_outlined,
              color: orange,
              size: 20,
            );
          } else {
            return Stack(
              alignment: Alignment.center,
              children: [
                ClipRect(
                  clipper: _StarClipper((st - pos + 1) * 100),
                  child: Icon(
                    Icons.star,
                    color: orange,
                    size: 20,
                  ),
                ),
                Icon(
                  Icons.star_border_outlined,
                  color: orange,
                  size: 20,
                ),
              ],
            );
          }
        },
        itemCount: len,
      ),
    );
  }
}

class _StarClipper extends CustomClipper<Rect> {
  final double percentage;

  _StarClipper(this.percentage);

  @override
  Rect getClip(Size size) {
    return Rect.fromLTRB(0, 0, size.width * percentage / 100, size.height);
  }

  @override
  bool shouldReclip(_StarClipper oldClipper) => true;
}
