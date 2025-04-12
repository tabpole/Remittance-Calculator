import 'package:flutter/material.dart';
import 'package:remittance_calculator/feature/home/sending/input/currency_rate_input.dart';
import 'package:remittance_calculator/feature/home/sending/input/sending_input.dart';
import 'package:remittance_calculator/feature/home/sending/input/incentive_input.dart';

import '../input/transaction_fee_input.dart';

class SendingForm extends StatelessWidget {
  SendingForm({super.key});
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    TextEditingController fromAmountController = TextEditingController();
    TextEditingController transactionFeeController = TextEditingController();
    TextEditingController currencyRateController = TextEditingController();
    TextEditingController incentiveController = TextEditingController();
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
