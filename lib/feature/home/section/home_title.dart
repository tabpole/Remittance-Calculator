import 'package:remittance_calculator/feature/home/widget/info_line.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remittance_calculator/feature/home/state/calculator_state.dart';

class HomeTitle extends ConsumerWidget {
  const HomeTitle({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(calculatorStateProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: const Text("Calculation Summary"),
        ),
        const SizedBox(height: 16),
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
