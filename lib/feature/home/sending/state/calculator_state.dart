import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'calculator_state.g.dart';

@riverpod
class CalculatorState extends _$CalculatorState {
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

  bool sendingMood = true;

  void updateField(String field, dynamic value) {
    state = {...state, field: value};
    if (field == 'SENDING') sendingMood = true;
    if (field == 'RECEIVING_TOTAL') sendingMood = false;
    sendingMood ? calculateForSendingMood() : calculateForReceivingMood();
  }

  void calculateForSendingMood() {
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

  void calculateForReceivingMood() {
    final receiving = (state['RECEIVING_TOTAL']! / (1 + (state['INCENTIVE_RATE']! / 100))).toStringAsFixed(1);
    final incentive = (state['RECEIVING_TOTAL']! - double.parse(receiving)).toStringAsFixed(1);
    final sending = (((double.parse(receiving) / state['CURRENCY_RATE']!) + state['TRANSACTION_FEE']!)).toStringAsFixed(1);

    state = {
      ...state,
      'SENDING': double.parse(sending),
      'RECEIVING': double.parse(receiving),
      'INCENTIVE': double.parse(incentive),
    };
  }
}
