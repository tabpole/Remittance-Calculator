import 'package:flutter/material.dart';
import 'package:remittance_calculator/feature/home/receiving/input/receiving_input.dart';
import 'package:remittance_calculator/feature/home/receiving/input/transaction_fee_input.dart';
import 'package:remittance_calculator/feature/home/receiving/input/currency_rate_input.dart';
import 'package:remittance_calculator/feature/home/receiving/input/incentive_input.dart';

class ReceivingForm extends StatelessWidget {
  ReceivingForm({super.key});

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final TextEditingController receivingAmountController = TextEditingController();
    final TextEditingController transactionFeeController = TextEditingController();
    final TextEditingController currencyRateController = TextEditingController();
    final TextEditingController incentiveController = TextEditingController();

    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ReceivingInput(controller: receivingAmountController),
          const SizedBox(height: 16),
          TransactionFeeInput(controller: transactionFeeController),
          const SizedBox(height: 16),
          CurrencyRateInput(controller: currencyRateController),
          const SizedBox(height: 16),
          IncentiveInput(controller: incentiveController),
        ],
      ),
    );
  }
}
