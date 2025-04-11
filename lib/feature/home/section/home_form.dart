import 'package:flutter/material.dart';
import 'package:remittance_calculator/feature/home/input/currency_rate_input.dart';
import 'package:remittance_calculator/feature/home/input/from_amount_input.dart';
import 'package:remittance_calculator/feature/home/input/incentive_input.dart';
import 'package:remittance_calculator/feature/home/input/target_amount_input.dart';

import '../input/transaction_fee_input.dart';

class HomeForm extends StatelessWidget {
  HomeForm({super.key});
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    TextEditingController fromAmountController = TextEditingController();
    TextEditingController transactionFeeController = TextEditingController();
    TextEditingController currencyRateController = TextEditingController();
    TextEditingController incentiveController = TextEditingController();
    TextEditingController targetAmountController = TextEditingController();
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FromAmountInput(controller: fromAmountController),
          const SizedBox(height: 16),
          TransactionFeeInput(controller: transactionFeeController),
          const SizedBox(height: 16),
          CurrencyRateInput(controller: currencyRateController),
          const SizedBox(height: 16),
          IncentiveInput(controller: incentiveController),
          const SizedBox(height: 16),
          TargetAmountInput(controller: targetAmountController),
        ],
      ),
    );
  }
}
