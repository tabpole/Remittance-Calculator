import 'package:flutter/material.dart';
import 'package:remittance_calculator/widget/atom/input.dart';

class IncentiveInput extends StatelessWidget {
  const IncentiveInput({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController(text: '2.5');
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
