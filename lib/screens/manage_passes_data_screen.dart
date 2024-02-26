import 'package:flutter/material.dart';

class ManagePassesDataScreen extends StatefulWidget {
  const ManagePassesDataScreen({super.key});

  @override
  State<ManagePassesDataScreen> createState() => _ManagePassesDataScreenState();
}

class _ManagePassesDataScreenState extends State<ManagePassesDataScreen> {
  bool _personalizationWithinWallet = true;
  bool _usePassesAcrossGoogle = true;
  bool _personalizationAcrossGoogle = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              // TODO: Open feedback page
            },
            icon: const Icon(
              Icons.feedback_outlined,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Switch(
                value: _personalizationWithinWallet,
                onChanged: (value) {
                  setState(() {
                    _personalizationWithinWallet = value;
                  });
                },
              ),
            ],
          ),
          Row(
            children: [
              Switch(
                value: _usePassesAcrossGoogle,
                onChanged: (value) {
                  setState(() {
                    _usePassesAcrossGoogle = value;
                  });
                },
              ),
            ],
          ),
          Row(
            children: [
              Switch(
                value: _personalizationAcrossGoogle,
                onChanged: (value) {
                  setState(() {
                    _personalizationAcrossGoogle = value;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
