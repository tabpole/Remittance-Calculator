import 'package:remittance_calculator/feature/home/widget/info_line.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: const Text("Caulation Summery"),
        ),
        const SizedBox(height: 16),
        InfoLine(
          title: "Sending",
          value: "100 EUR",
        ),
        InfoLine(
          title: "Transaction Fee",
          value: "5 EUR",
        ),
        InfoLine(
          title: "Currency Rate",
          value: "1 EUR = 130 BDT",
        ),
        InfoLine(
          title: "Incentive",
          value: "230 BDT",
        ),
        InfoLine(
          title: "Receiving",
          value: "13000 BDT",
        ),
      ],
    );
  }
}
