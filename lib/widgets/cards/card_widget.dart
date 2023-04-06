import 'package:cipher_schools/themes/home_theme.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  final Map<String, String> s;
  final IconData icon;
  const CardWidget({Key? key, required this.s, required this.icon})
      : super(key: key);

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Stack(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image(
              width: double.infinity,
              fit: BoxFit.cover,
              image: NetworkImage(
                widget.s['image'] ?? "",
              ),
              height: size.height * 0.3,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 10),
            height: size.height * 0.3,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), gradient: gradient),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  widget.s['head'] ?? "null",
                  style: textStyleWhite3.copyWith(color: Colors.white70),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  widget.s['subtitle'] ?? "null",
                  style: textStyleWhite1.copyWith(fontSize: 24),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  margin: const EdgeInsets.only(bottom: 10),
                  padding: const EdgeInsets.symmetric(
                      vertical: 10, horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 1,
                      color: Colors.white70,
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        widget.s['user'] ?? "null",
                        style: textStyleWhite3.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Icon(
                        widget.icon,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
