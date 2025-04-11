import 'package:flutter/material.dart';

class FromAmountCurrencyInput extends StatelessWidget {
  FromAmountCurrencyInput({super.key});

  final String? selectedValue = 'EUR';
  final List<String> currencies = ['USD', 'EUR', 'JPY'];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 1.0),
        borderRadius: BorderRadius.circular(8.0),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
      child: DropdownButton<String>(
        value: selectedValue,
        isExpanded: false,
        underline: SizedBox(),
        icon: SizedBox(),
        items: currencies.map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          );
        }).toList(),
        onChanged: (String? newValue) {},
      ),
    );
  }
}
