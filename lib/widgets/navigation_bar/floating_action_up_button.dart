import 'package:cipher_schools/utils/test_data.dart';
import 'package:flutter/material.dart';

class FloatingActionUpButton extends StatelessWidget {
  final VoidCallback func;
  const FloatingActionUpButton({Key? key, required this.func}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
              backgroundColor: orange,
              onPressed: func,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: orange,
                    border: Border.all(color: Colors.black, width: 3),
                    borderRadius: BorderRadius.circular(30)),
                child: const Icon(
                  Icons.arrow_upward_outlined,
                  color: Colors.black,
                ),
              ),
            );
  }
}