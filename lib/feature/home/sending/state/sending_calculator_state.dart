import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'sending_calculator_state.g.dart';

@riverpod
class SendingCalculatorState extends _$SendingCalculatorState {
  @override
  Map<String, double> build() => {
        'SENDING': 0.0,
        'TRANSACTION_FEE': 5.0,
        'CURRENCY_RATE': 135.5,
        'INCENTIVE_RATE': 2.5,
        'INCENTIVE': 0.0,
        'RECEIVING': 0.0,
        'RECEIVING_TOTAL': 0.0,
      };

  double? getField(String field) => state[field];

  void updateField(String field, dynamic value) {
    state = {...state, field: value};

    calculate();
  }

  void calculate() {
    final receiving = ((state['SENDING']! - state['TRANSACTION_FEE']!) * state['CURRENCY_RATE']!).toStringAsFixed(1);
    final incentive = ((double.parse(receiving) * state['INCENTIVE_RATE']!) / 100).toStringAsFixed(1);
    final receivingTotal = (double.parse(receiving) + double.parse(incentive)).toStringAsFixed(1);

    state = {
      ...state,
      'INCENTIVE': double.parse(incentive),
      'RECEIVING': double.parse(receiving),
      'RECEIVING_TOTAL': double.parse(receivingTotal),
    };
  }
}
