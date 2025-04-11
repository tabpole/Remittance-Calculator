import 'package:flutter/material.dart';

class CurrencyRateInput extends StatelessWidget {
  const CurrencyRateInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    return TextField(
      controller: controller,
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      decoration: InputDecoration(
        labelText: 'Currency Rate',
        border: OutlineInputBorder(),
        contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0), // Reduced padding
      ),
      onChanged: (value) {
        // Handle the input value change
        print(value);
      },
    );
  }
}
