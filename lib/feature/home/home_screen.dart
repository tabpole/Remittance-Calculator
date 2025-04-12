import 'package:flutter/material.dart';
import 'package:remittance_calculator/feature/home/section/home_form.dart';
import 'package:remittance_calculator/feature/home/section/home_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Remittance Calculator"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 64),
              HomeTitle(),
              const SizedBox(height: 32),
              HomeForm(),
            ],
          ),
        ),
      ),
    );
  }
}
