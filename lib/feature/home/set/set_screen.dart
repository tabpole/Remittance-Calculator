import 'package:flutter/material.dart';
import 'package:remittance_calculator/widget/atom/input.dart';

class SetScreen extends StatelessWidget {
  const SetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 64),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputField.design.copyWith(
                  labelText: 'Transaction Fee',
                  suffixText: 'EUR',
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputField.design.copyWith(
                  labelText: 'Currency Rate',
                  suffixText: 'BDT/EUR',
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputField.design.copyWith(
                  labelText: 'Incentive Rate',
                  suffixText: '%',
                ),
              ),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
