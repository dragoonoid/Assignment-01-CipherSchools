import 'package:cipher_schools/themes/home_theme.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class CourseCard extends StatelessWidget {
  final Map<String, String> mp;
  const CourseCard({Key? key, required this.mp}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: ((context, constraints) {
      final maxHeight = constraints.maxHeight;
      //final maxWidth = constraints.minHeight;
      return Container(
        //margin: const EdgeInsets.only(bottom: 1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 3,
              blurRadius: 5,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image(
                width: double.infinity,
                fit: BoxFit.cover,
                image: NetworkImage(
                  mp['image'] ?? "",
                ),
                height: maxHeight * 0.4,
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 5, 0, 5),
              padding: const EdgeInsets.all(8),
              //width: maxWidth * 0.55,
              decoration: BoxDecoration(
                color: Colors.orange[100],
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(12),
                    bottomRight: Radius.circular(12)),
              ),
              child: AutoSizeText(
                mp['tag'] ?? '',
                style: textStyleOrange3.copyWith(fontSize: 10),
                maxLines: 1,
                //textAlign: TextAlign.end,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    mp['name'] ?? '',
                    overflow: TextOverflow.ellipsis,
                    style:
                        textStyleBlack3.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      const Text(
                        'No. of videos: ',
                        overflow: TextOverflow.ellipsis,
                        style: textStyleGrey3,
                      ),
                      Text(
                        mp['videos'] ?? '',
                        overflow: TextOverflow.ellipsis,
                        style: textStyleBlack3,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        'Course time: ',
                        overflow: TextOverflow.ellipsis,
                        style: textStyleGrey3,
                      ),
                      Text(
                        '${mp['time']} hours',
                        overflow: TextOverflow.ellipsis,
                        style: textStyleBlack3,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                      //  / radius: 15,
                        backgroundImage: NetworkImage(mp['instUrl'] ?? ''),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            mp['instName'] ?? '',
                            overflow: TextOverflow.ellipsis,
                            style: textStyleBlack3,
                          ),
                          const Text(
                            'Instructor',
                            overflow: TextOverflow.ellipsis,
                            style: textStyleGrey3,
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }));
  }
}
