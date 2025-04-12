import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remittance_calculator/widget/atom/input.dart';
import 'package:remittance_calculator/feature/home/receiving/state/receiving_calculator_state.dart';

class ReceivingInput extends ConsumerWidget {
  final TextEditingController controller;
  const ReceivingInput({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.read(receivingCalculatorStateProvider.notifier);
    controller.text = state.getField('RECEIVING_TOTAL').toString();
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputField.design.copyWith(
        labelText: 'Receiving Amount',
        suffixText: 'BDT',
      ),
      onChanged: (value) {
        if (value.isNotEmpty) {
          state.updateField('RECEIVING_TOTAL', double.tryParse(value));
        }
      },
    );
  }
}
