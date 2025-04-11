import 'package:flutter/material.dart';
import 'package:remittance_calculator/widget/atom/input.dart';

class CurrencyRateInput extends StatelessWidget {
  final TextEditingController controller;
  const CurrencyRateInput({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    controller.text = '135';
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      onChanged: (value) {},
      decoration: InputField.design.copyWith(
        labelText: 'Currency Rate',
      ),
    );
  }
}
