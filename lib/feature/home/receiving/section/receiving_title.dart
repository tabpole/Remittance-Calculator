import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remittance_calculator/feature/home/receiving/state/receiving_calculator_state.dart';
import 'package:remittance_calculator/feature/home/widget/info_line.dart';

class ReceivingTitle extends ConsumerWidget {
  const ReceivingTitle({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(receivingCalculatorStateProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InfoLine(
          title: "Sending",
          value: "${state['SENDING']} EUR",
        ),
        InfoLine(
          title: "Transaction Fee",
          value: "${state['TRANSACTION_FEE']} EUR",
        ),
        InfoLine(
          title: "Currency Rate",
          value: "1 EUR = ${state['CURRENCY_RATE']} BDT",
        ),
        InfoLine(
          title: "Receiving",
          value: "${state['RECEIVING']} BDT",
        ),
        InfoLine(
          title: "Incentive",
          value: "${state['INCENTIVE']} BDT",
        ),
        InfoLine(
          title: "Total Receiving",
          value: "${state['RECEIVING_TOTAL']} BDT",
        ),
      ],
    );
  }
}
