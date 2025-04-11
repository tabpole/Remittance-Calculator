import 'package:flutter/material.dart';
import 'package:remittance_calculator/feature/home/input/currency_rate_input.dart';
import 'package:remittance_calculator/feature/home/input/from_amount_input.dart';
import 'package:remittance_calculator/feature/home/input/incentive_input.dart';
import 'package:remittance_calculator/feature/home/input/target_amount_input.dart';

import '../input/transaction_fee_input.dart';

class HomeForm extends StatelessWidget {
  const HomeForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FromAmountInput(),
        const SizedBox(height: 16),
        TransactionFeeInput(),
        const SizedBox(height: 16),
        CurrencyRateInput(),
        const SizedBox(height: 16),
        IncentiveInput(),
        const SizedBox(height: 16),
        TargetAmountInput(),
      ],
    );
  }
}
