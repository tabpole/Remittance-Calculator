import 'package:remittance_calculator/feature/home/receiving/section/receiving_form.dart';
import 'package:remittance_calculator/feature/home/receiving/section/receiving_title.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class ReceivingScreen extends StatelessWidget {
  const ReceivingScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 64),
            ReceivingForm(),
            const SizedBox(height: 32),
            ReceivingTitle(),
          ],
        ),
      ),
    );
  }
}
