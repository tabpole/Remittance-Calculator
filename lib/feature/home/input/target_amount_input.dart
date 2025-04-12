import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remittance_calculator/feature/home/state/calculator_state.dart';
import 'package:remittance_calculator/widget/atom/input.dart';

class TargetAmountInput extends ConsumerWidget {
  final TextEditingController controller;

  const TargetAmountInput({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.read(calculatorStateProvider.notifier);
    controller.text = state.getField('RECEIVING_TOTAL').toString();
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      onChanged: (value) {
        state.updateField(
          'RECEIVING_TOTAL',
          value.isNotEmpty ? double.tryParse(value) : 0.0,
        );
      },
      decoration: InputField.design.copyWith(
        labelText: 'Total',
        suffixText: 'BDT',
      ),
    );
  }
}
