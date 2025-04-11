import 'package:flutter/material.dart';
import 'package:remittance_calculator/widget/atom/input.dart';

class TargetAmountInput extends StatelessWidget {
  const TargetAmountInput({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController(text: '13000');
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      onChanged: (value) {},
      decoration: InputField.design.copyWith(
        labelText: 'Total',
        suffixText: 'BDT',
      ),
    );
  }
}
