import 'package:flutter/material.dart';
import 'package:remittance_calculator/feature/home/sending/input/currency_rate_input.dart';
import 'package:remittance_calculator/feature/home/sending/input/sending_input.dart';
import 'package:remittance_calculator/feature/home/sending/input/incentive_input.dart';
import 'package:remittance_calculator/feature/home/sending/input/transaction_fee_input.dart';

class SendingForm extends StatelessWidget {
  SendingForm({super.key});

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final TextEditingController fromAmountController = TextEditingController();
    final TextEditingController transactionFeeController = TextEditingController();
    final TextEditingController currencyRateController = TextEditingController();
    final TextEditingController incentiveController = TextEditingController();

    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SendingInput(controller: fromAmountController),
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
