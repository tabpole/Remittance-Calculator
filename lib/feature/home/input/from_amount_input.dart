import 'package:flutter/material.dart';
import 'package:remittance_calculator/widget/atom/input.dart';

class FromAmountInput extends StatelessWidget {
  final TextEditingController controller;
  const FromAmountInput({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    controller.text = '100';
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      onChanged: (value) {},
      decoration: InputField.design.copyWith(
        labelText: 'From',
        suffixText: 'EUR',
      ),
    );
  }
}
