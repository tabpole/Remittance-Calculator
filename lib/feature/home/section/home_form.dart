import 'package:flutter/material.dart';
import 'package:remittance_calculator/feature/home/component/currency_rate_input.dart';
import 'package:remittance_calculator/feature/home/component/from_amount_currency_input.dart';
import 'package:remittance_calculator/feature/home/component/from_amount_input.dart';
import 'package:remittance_calculator/feature/home/component/incentive_input.dart';
import 'package:remittance_calculator/feature/home/component/target_amount_currency_input.dart';
import 'package:remittance_calculator/feature/home/component/target_amount_input.dart';

class HomeForm extends StatelessWidget {
  const HomeForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              flex: 3,
              child: FromAmountInput(),
            ),
            const SizedBox(width: 16),
            Expanded(
              flex: 1,
              child: FromAmountCurrencyInput(),
            ),
          ],
        ),
        const SizedBox(height: 16),
        CurrencyRateInput(),
        const SizedBox(height: 16),
        IncentiveInputField(),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              flex: 3,
              child: TargetAmountInput(),
            ),
            const SizedBox(width: 16),
            Expanded(
              flex: 1,
              child: TargetAmountCurrencyInput(),
            ),
          ],
        ),
      ],
    );
  }
}
