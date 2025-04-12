import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:remittance_calculator/feature/home/home_screen.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Hive
  await Hive.initFlutter();

  runApp(
    ProviderScope(
      child: ShadcnApp(
        debugShowCheckedModeBanner: false,
        title: 'Remittance Calculator',
        theme: ThemeData(
          colorScheme: ColorSchemes.darkSlate(),
          radius: 0.5,
        ),
        builder: (context, child) {
          return DrawerOverlay(
            child: child ?? const SizedBox(),
          );
        },
        home: const HomeScreen(),
      ),
    ),
  );
}
