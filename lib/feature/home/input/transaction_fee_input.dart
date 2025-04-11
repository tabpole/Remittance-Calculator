import 'package:flutter/material.dart';
import 'package:remittance_calculator/widget/atom/input.dart';

class TransactionFeeInput extends StatelessWidget {
  const TransactionFeeInput({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController(text: '5');
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
