import 'package:flutter/material.dart';
import 'package:remittance_calculator/widget/atom/input.dart';

class FromAmountInput extends StatelessWidget {
  const FromAmountInput({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController(text: '100');
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
