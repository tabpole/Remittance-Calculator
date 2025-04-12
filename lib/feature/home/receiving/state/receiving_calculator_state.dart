import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'receiving_calculator_state.g.dart';

@riverpod
class ReceivingCalculatorState extends _$ReceivingCalculatorState {
  @override
  Map<String, double> build() => {
        'RECEIVING_TOTAL': 0.0,
        'RECEIVING': 0.0,
        'INCENTIVE': 0.0,
        'SENDING': 0.0,
        'TRANSACTION_FEE': 5.0,
        'CURRENCY_RATE': 135.5,
        'INCENTIVE_RATE': 2.5,
      };

  double? getField(String field) => state[field];

  void updateField(String field, dynamic value) {
    state = {...state, field: value};
    calculate();
  }

  void calculate() {
    final receivingTotal = state['RECEIVING_TOTAL']!;
    final incentive = (receivingTotal * state['INCENTIVE_RATE']!) / (100 + state['INCENTIVE_RATE']!);
    final receiving = receivingTotal - incentive;
    final sending = (receiving / state['CURRENCY_RATE']!) + state['TRANSACTION_FEE']!;

    state = {
      ...state,
      'INCENTIVE': double.parse(incentive.toStringAsFixed(1)),
      'RECEIVING': double.parse(receiving.toStringAsFixed(1)),
      'SENDING': double.parse(sending.toStringAsFixed(1)),
    };
  }
}
