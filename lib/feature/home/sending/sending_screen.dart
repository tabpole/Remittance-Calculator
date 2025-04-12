import 'package:remittance_calculator/feature/home/section/home_form.dart';
import 'package:remittance_calculator/feature/home/section/home_title.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class SendingSereen extends StatelessWidget {
  const SendingSereen({
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
            HomeForm(),
            const SizedBox(height: 32),
            HomeTitle(),
          ],
        ),
      ),
    );
  }
}
