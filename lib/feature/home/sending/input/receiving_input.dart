import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remittance_calculator/feature/home/sending/state/sending_calculator_state.dart';
import 'package:remittance_calculator/widget/atom/input.dart';

class ReceivingInput extends ConsumerWidget {
  final TextEditingController controller;

  const ReceivingInput({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.read(sendingCalculatorStateProvider.notifier);
    controller.text = state.getField('RECEIVING_TOTAL').toString();
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputField.design.copyWith(
        labelText: 'Receiving Total',
        suffixText: 'BDT',
      ),
      onChanged: (value) {
        state.updateField(
          'RECEIVING_TOTAL',
          value.isNotEmpty ? double.tryParse(value) : 0.0,
        );
      },
    );
  }
}
