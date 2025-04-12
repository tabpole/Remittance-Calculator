import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remittance_calculator/widget/atom/input.dart';
import 'package:remittance_calculator/feature/home/sending/state/calculator_state.dart';

class CurrencyRateInput extends ConsumerWidget {
  final TextEditingController controller;
  const CurrencyRateInput({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.read(calculatorStateProvider.notifier);
    controller.text = state.getField('CURRENCY_RATE').toString();
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputField.design.copyWith(
        labelText: 'Currency Rate',
      ),
      onChanged: (value) {
        state.updateField(
          'CURRENCY_RATE',
          value.isNotEmpty ? double.tryParse(value) : 0.0,
        );
      },
    );
  }
}
