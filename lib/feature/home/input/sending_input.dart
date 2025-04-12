import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remittance_calculator/widget/atom/input.dart';
import 'package:remittance_calculator/feature/home/state/calculator_state.dart';

class SendingInput extends ConsumerWidget {
  final TextEditingController controller;
  const SendingInput({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.read(calculatorStateProvider.notifier);
    controller.text = state.getField('SENDING').toString();
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputField.design.copyWith(
        labelText: 'From',
        suffixText: 'EUR',
      ),
      onChanged: (value) {
        state.updateField(
          'SENDING',
          value.isNotEmpty ? double.tryParse(value) : 0.0,
        );
      },
    );
  }
}
