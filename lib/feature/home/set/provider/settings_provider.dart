import 'package:hive_flutter/hive_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../model/settings_model.dart';

part 'settings_provider.g.dart';

@riverpod
class Settings extends _$Settings {
  static const String boxName = 'settings';
  static const String settingsKey = 'current_settings';

  @override
  Future<SettingsModel> build() async {
    final box = await Hive.openBox(boxName);
    final map = box.get(settingsKey) as Map?;
    return map != null ? SettingsModel.fromMap(Map<String, dynamic>.from(map)) : SettingsModel();
  }

  Future<void> updateSettings({
    double? transactionFee,
    double? currencyRate,
    double? incentiveRate,
  }) async {
    final currentSettings = await future;
    final updatedSettings = SettingsModel(
      transactionFee: transactionFee ?? currentSettings.transactionFee,
      currencyRate: currencyRate ?? currentSettings.currencyRate,
      incentiveRate: incentiveRate ?? currentSettings.incentiveRate,
    );

    final box = await Hive.openBox(boxName);
    await box.put(settingsKey, updatedSettings.toMap());
    state = AsyncData(updatedSettings);
  }
}
