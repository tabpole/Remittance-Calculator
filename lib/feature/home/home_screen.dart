import 'package:flutter/material.dart';
import 'package:remittance_calculator/feature/home/receiving/receiving_screen.dart';
import 'package:remittance_calculator/feature/home/sending/sending_screen.dart';
import 'package:remittance_calculator/feature/home/setup/setup_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Remittance Calculator",
            style: TextStyle(fontSize: 16),
          ),
          bottom: const TabBar(
            tabs: [
              Tab(text: "Sending"),
              Tab(text: "Receiving"),
              Tab(text: "Setup"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SendingSereen(),
            ReceivingScreen(),
            SetupScreen(),
          ],
        ),
      ),
    );
  }
}
