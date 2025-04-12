import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remittance_calculator/widget/atom/input.dart';
import 'package:remittance_calculator/feature/home/receiving/state/receiving_calculator_state.dart';

class IncentiveInput extends ConsumerWidget {
  final TextEditingController controller;
  const IncentiveInput({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.read(receivingCalculatorStateProvider.notifier);
    controller.text = state.getField('INCENTIVE_RATE').toString();
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputField.design.copyWith(
        labelText: 'Incentive',
        suffixText: '%',
      ),
      onChanged: (value) {
        state.updateField(
          'INCENTIVE_RATE',
          value.isNotEmpty ? double.tryParse(value) : 0.0,
        );
      },
    );
  }
}
