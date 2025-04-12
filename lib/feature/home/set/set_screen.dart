import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remittance_calculator/feature/home/set/provider/settings_provider.dart';
import 'package:remittance_calculator/widget/atom/input.dart';

class SetScreen extends ConsumerWidget {
  const SetScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(settingsProvider);

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: settings.when(
            data: (data) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 64),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: TextEditingController(text: data.transactionFee.toString()),
                  onChanged: (value) {
                    final fee = double.tryParse(value) ?? 0.0;
                    ref.read(settingsProvider.notifier).updateSettings(
                          transactionFee: fee,
                        );
                  },
                  decoration: InputField.design.copyWith(
                    labelText: 'Transaction Fee',
                    suffixText: 'EUR',
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: TextEditingController(text: data.currencyRate.toString()),
                  onChanged: (value) {
                    final rate = double.tryParse(value) ?? 0.0;
                    ref.read(settingsProvider.notifier).updateSettings(
                          currencyRate: rate,
                        );
                  },
                  decoration: InputField.design.copyWith(
                    labelText: 'Currency Rate',
                    suffixText: 'BDT/EUR',
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: TextEditingController(text: data.incentiveRate.toString()),
                  onChanged: (value) {
                    final rate = double.tryParse(value) ?? 0.0;
                    ref.read(settingsProvider.notifier).updateSettings(
                          incentiveRate: rate,
                        );
                  },
                  decoration: InputField.design.copyWith(
                    labelText: 'Incentive Rate',
                    suffixText: '%',
                  ),
                ),
                const SizedBox(height: 32),
              ],
            ),
            error: (error, stack) => Center(
              child: Text('Error: $error'),
            ),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
          ),
        ),
      ),
    );
  }
}
