import 'package:flutter/material.dart';
import 'package:google_wallet_clone/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wallet"),
        actions: const [
          EmptyAvatar(),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}
