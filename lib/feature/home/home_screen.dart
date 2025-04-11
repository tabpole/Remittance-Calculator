import 'package:flutter/material.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart' as shadcn;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        body: Center(
          child: shadcn.Avatar(
            backgroundColor: Colors.red, // Use Flutter's Colors
            initials: shadcn.Avatar.getInitials('sunarya-thito'),
            provider: const NetworkImage('https://avatars.githubusercontent.com/u/64018564?v=4'),
          ),
        ),
      ),
    );
  }
}
