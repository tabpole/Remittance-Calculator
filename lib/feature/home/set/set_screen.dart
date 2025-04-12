import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remittance_calculator/feature/home/set/provider/settings_provider.dart';
import 'package:remittance_calculator/widget/atom/input.dart';

class SetScreen extends ConsumerStatefulWidget {
  const SetScreen({super.key});

  @override
  ConsumerState<SetScreen> createState() => _SetScreenState();
}

class _SetScreenState extends ConsumerState<SetScreen> {
  late final TextEditingController _transactionFeeController;
  late final TextEditingController _currencyRateController;
  late final TextEditingController _incentiveRateController;

  @override
  void initState() {
    super.initState();
    _transactionFeeController = TextEditingController();
    _currencyRateController = TextEditingController();
    _incentiveRateController = TextEditingController();
  }

  @override
  void dispose() {
    _transactionFeeController.dispose();
    _currencyRateController.dispose();
    _incentiveRateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final settings = ref.watch(settingsProvider);

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: settings.when(
            data: (data) {
              // Update controller values without triggering callbacks
              _transactionFeeController.value = _transactionFeeController.value.copyWith(
                text: data.transactionFee.toString(),
                selection: _transactionFeeController.selection,
              );
              _currencyRateController.value = _currencyRateController.value.copyWith(
                text: data.currencyRate.toString(),
                selection: _currencyRateController.selection,
              );
              _incentiveRateController.value = _incentiveRateController.value.copyWith(
                text: data.incentiveRate.toString(),
                selection: _incentiveRateController.selection,
              );

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 64),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: _transactionFeeController,
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
                    controller: _currencyRateController,
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
                    controller: _incentiveRateController,
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
              );
            },
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
