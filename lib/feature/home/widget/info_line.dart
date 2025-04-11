import 'package:flutter/material.dart';

class InfoLine extends StatelessWidget {
  final String title;
  final String value;
  const InfoLine({
    super.key,
    this.title = "",
    this.value = "",
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Text(title),
          Spacer(),
          Text(value),
        ],
      ),
    );
  }
}
