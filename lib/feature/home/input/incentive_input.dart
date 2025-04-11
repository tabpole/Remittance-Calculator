import 'package:flutter/material.dart';
import 'package:remittance_calculator/widget/atom/input.dart';

class IncentiveInput extends StatelessWidget {
  final TextEditingController controller;
  const IncentiveInput({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    controller.text = '2.5';
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      onChanged: (value) {},
      decoration: InputField.design.copyWith(
        labelText: 'Incentive',
        suffixText: '%',
      ),
    );
  }
}
