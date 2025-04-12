import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remittance_calculator/widget/atom/input.dart';
import 'package:remittance_calculator/feature/home/sending/state/sending_calculator_state.dart';

class TransactionFeeInput extends ConsumerWidget {
  final TextEditingController controller;
  const TransactionFeeInput({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.read(sendingCalculatorStateProvider.notifier);
    controller.text = state.getField('TRANSACTION_FEE').toString();
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputField.design.copyWith(
        labelText: 'Transaction Fee',
        suffixText: 'EUR',
      ),
      onChanged: (value) {
        state.updateField(
          'TRANSACTION_FEE',
          value.isNotEmpty ? double.tryParse(value) : 0.0,
        );
      },
    );
  }
}
