import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart' as shadcn;

import 'feature/home/home_screen.dart';

void main() {
  runApp(
    ProviderScope(
      child: shadcn.ShadcnApp(
        title: 'My App',
        home: const HomeScreen(),
        theme: shadcn.ThemeData(
          colorScheme: shadcn.ColorSchemes.darkGreen(),
          radius: 0.5,
        ),
        debugShowCheckedModeBanner: false,
      ),
    ),
  );
}
