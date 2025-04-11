import 'package:flutter/material.dart';
import 'package:remittance_calculator/widget/atom/input.dart';

class TransactionFeeInput extends StatelessWidget {
  final TextEditingController controller;
  const TransactionFeeInput({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    controller.text = '5';
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      onChanged: (value) {},
      decoration: InputField.design.copyWith(
        labelText: 'Transaction Fee',
        suffixText: 'EUR',
      ),
    );
  }
}
