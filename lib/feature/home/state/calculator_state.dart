import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'calculator_state.g.dart';

@riverpod
class CalculatorState extends _$CalculatorState {
  @override
  Map<String, double> build() => {
        'SENDING': 100.0,
        'TRANSACTION_FEE': 5.0,
        'CURRENCY_RATE': 135.5,
        'INCENTIVE_RATE': 2.5,
        'INCENTIVE': 0.0,
        'RECEIVING': 0.0,
        'RECEIVING_TOTAL': 0.0,
      };

  double? getField(String field) => state[field];

  bool isSendingSelected = true;

  void updateField(String field, dynamic value) {
    state = {...state, field: value};
    if (field == 'SENDING') {
      isSendingSelected = true;
      calculateOnSending();
    } else if (field == 'RECEIVING_TOTAL') {
      isSendingSelected = false;
      calculateOnReceiving();
    } else {
      calculateOnSending();
    }
  }

  void calculateOnSending() {
    final sending = state['SENDING'] ?? 0.0;
    final transactionFee = state['TRANSACTION_FEE'] ?? 0.0;
    final currencyRate = state['CURRENCY_RATE'] ?? 0.0;
    final incentiveRate = state['INCENTIVE_RATE'] ?? 0.0;

    final receiving = ((sending - transactionFee) * currencyRate).toStringAsFixed(1);
    final incentive = ((double.parse(receiving) * incentiveRate) / 100).toStringAsFixed(1);
    final receivingTotal = (double.parse(receiving) + double.parse(incentive)).toStringAsFixed(1);

    state = {
      ...state,
      'INCENTIVE': double.parse(incentive),
      'RECEIVING': double.parse(receiving),
      'RECEIVING_TOTAL': double.parse(receivingTotal),
    };
  }

  void calculateOnReceiving() {
    final receivingTotal = state['RECEIVING_TOTAL'] ?? 0.0;
    final transactionFee = state['TRANSACTION_FEE'] ?? 0.0;
    final currencyRate = state['CURRENCY_RATE'] ?? 0.0;
    final incentiveRate = state['INCENTIVE_RATE'] ?? 0.0;

    final receiving = (receivingTotal / (1 + (incentiveRate / 100))).toStringAsFixed(1);
    final incentive = (receivingTotal - double.parse(receiving)).toStringAsFixed(1);
    final sending = (((double.parse(receiving) / currencyRate) + transactionFee)).toStringAsFixed(1);

    state = {
      ...state,
      'SENDING': double.parse(sending),
      'RECEIVING': double.parse(receiving),
      'INCENTIVE': double.parse(incentive),
    };
  }
}
