import 'package:flutter/material.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Remittance Calculator"),
        const SizedBox(height: 8),
        const Text("Calculate the cost of sending money abroad"),
        const SizedBox(height: 16),
      ],
    );
  }
}
