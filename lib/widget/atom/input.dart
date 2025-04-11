import 'package:flutter/material.dart';

class InputField {
  static final design = InputDecoration(
    constraints: const BoxConstraints(
      maxHeight: 48,
    ),
    contentPadding: const EdgeInsets.symmetric(
      vertical: 8.0,
      horizontal: 16.0,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: const BorderSide(),
    ),
  );
}
