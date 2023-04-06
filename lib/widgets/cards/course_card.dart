import 'package:cipher_schools/themes/home_theme.dart';
import 'package:cipher_schools/utils/test_data.dart';
import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final Map<String, String> mp;
  final bool isDark;
  const CourseCard({Key? key, required this.mp, required this.isDark})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2),
      child: LayoutBuilder(
        builder: ((context, constraints) {
          final maxHeight = constraints.maxHeight;
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: !isDark ? Colors.white : black,
              boxShadow: [
                BoxShadow(
                  color: !isDark
                      ? Colors.grey.withOpacity(0.4)
                      : Colors.black.withOpacity(0.4),
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
                  decoration: BoxDecoration(
                    color: !isDark ? Colors.orange[100] : Colors.grey[700],
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(12),
                        bottomRight: Radius.circular(12)),
                  ),
                  child: Text(
                    mp['tag'] ?? '',
                    style: !isDark
                        ? textStyleOrange3.copyWith(fontSize: 12)
                        : textStyleOrange3.copyWith(
                            fontSize: 12, fontWeight: FontWeight.w400),
                    maxLines: 1,
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
                        style: !isDark
                            ? textStyleBlack3.copyWith(
                                fontWeight: FontWeight.bold)
                            : textStyleWhite3.copyWith(
                                fontWeight: FontWeight.bold),
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
                            style: !isDark ? textStyleBlack3 : textStyleWhite3,
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
                            style: !isDark ? textStyleBlack3 : textStyleWhite3,
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
                                style:
                                    !isDark ? textStyleBlack3 : textStyleWhite3,
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
        }),
      ),
    );
  }
}
