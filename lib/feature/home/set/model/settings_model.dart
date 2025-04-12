class SettingsModel {
  final double transactionFee;
  final double currencyRate;
  final double incentiveRate;

  const SettingsModel({
    this.transactionFee = 0.0,
    this.currencyRate = 0.0,
    this.incentiveRate = 0.0,
  });

  Map<String, dynamic> toMap() {
    return {
      'transactionFee': transactionFee,
      'currencyRate': currencyRate,
      'incentiveRate': incentiveRate,
    };
  }

  factory SettingsModel.fromMap(Map<String, dynamic> map) {
    return SettingsModel(
      transactionFee: (map['transactionFee'] as num?)?.toDouble() ?? 0.0,
      currencyRate: (map['currencyRate'] as num?)?.toDouble() ?? 0.0,
      incentiveRate: (map['incentiveRate'] as num?)?.toDouble() ?? 0.0,
    );
  }
}
