import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remittance_calculator/widget/atom/input.dart';
import 'package:remittance_calculator/feature/home/sending/state/sending_calculator_state.dart';

class SendingInput extends ConsumerWidget {
  final TextEditingController controller;
  const SendingInput({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.read(sendingCalculatorStateProvider.notifier);
    controller.text = state.getField('SENDING').toString();
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputField.design.copyWith(
        labelText: 'Sending',
        suffixText: 'EUR',
      ),
      onChanged: (value) {
        if (value.isNotEmpty) state.updateField('SENDING', double.tryParse(value));
      },
    );
  }
}
