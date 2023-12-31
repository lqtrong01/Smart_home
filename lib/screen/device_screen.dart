import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:smart_home/navigate/bot_nav.dart';

class DeviceScreen extends StatelessWidget {
  const DeviceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thiết bị'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.black),
              borderRadius: BorderRadius.circular(12)),
          child: Column(
            children: [
              Expanded(
                  child: SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: const [
                        const SizedBox(
                          width: 25,
                        ),
                        Text('Items1'),
                        Text('Items2'),
                        Text('Items3'),
                        Text('Items4'),
                        Text('Items1'),
                        Text('Items2'),
                        Text('Items3'),
                        Text('Items4'),
                        Text('Items1'),
                        Text('Items2'),
                        Text('Items3'),
                        Text('Items4'),
                        Text('Items1'),
                        Text('Items2'),
                        Text('Items3'),
                        Text('Items4'),
                        Text('Items1'),
                        Text('Items2'),
                        Text('Items3'),
                        Text('Items4'),
                        Text('Items1'),
                        Text('Items2'),
                        Text('Items3'),
                        Text('Items4'),
                        Text('Items1'),
                        Text('Items2'),
                        Text('Items3'),
                        Text('Items4'),
                        Text('Items1'),
                        Text('Items2'),
                        Text('Items3'),
                        Text('Items4'),
                        Text('Items1'),
                        Text('Items2'),
                        Text('Items3'),
                        Text('Items4'),
                        Text('Items1'),
                        Text('Items2'),
                        Text('Items3'),
                        Text('Items4'),
                      ],
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    Column(
                      children: const [
                        Text('Items1'),
                        Text('Items2'),
                        Text('Items3'),
                        Text('Items4'),
                        Text('Items1'),
                        Text('Items2'),
                        Text('Items3'),
                        Text('Items4'),
                        Text('Items1'),
                        Text('Items2'),
                        Text('Items3'),
                        Text('Items4'),
                        Text('Items1'),
                        Text('Items2'),
                        Text('Items3'),
                        Text('Items4'),
                        Text('Items1'),
                        Text('Items2'),
                        Text('Items3'),
                        Text('Items4'),
                        Text('Items1'),
                        Text('Items2'),
                        Text('Items3'),
                        Text('Items4'),
                        Text('Items1'),
                        Text('Items2'),
                        Text('Items3'),
                        Text('Items4'),
                        Text('Items1'),
                        Text('Items2'),
                        Text('Items3'),
                        Text('Items4'),
                        Text('Items1'),
                        Text('Items2'),
                        Text('Items3'),
                        Text('Items4'),
                        Text('Items1'),
                        Text('Items2'),
                        Text('Items3'),
                        Text('Items4'),
                      ],
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    Column(
                      children: const [
                        Text('Items1'),
                        Text('Items2'),
                        Text('Items3'),
                        Text('Items4'),
                        Text('Items1'),
                        Text('Items2'),
                        Text('Items3'),
                        Text('Items4'),
                        Text('Items1'),
                        Text('Items2'),
                        Text('Items3'),
                        Text('Items4'),
                        Text('Items1'),
                        Text('Items2'),
                        Text('Items3'),
                        Text('Items4'),
                        Text('Items1'),
                        Text('Items2'),
                        Text('Items3'),
                        Text('Items4'),
                        Text('Items1'),
                        Text('Items2'),
                        Text('Items3'),
                        Text('Items4'),
                        Text('Items1'),
                        Text('Items2'),
                        Text('Items3'),
                        Text('Items4'),
                        Text('Items1'),
                        Text('Items2'),
                        Text('Items3'),
                        Text('Items4'),
                        Text('Items1'),
                        Text('Items2'),
                        Text('Items3'),
                        Text('Items4'),
                        Text('Items1'),
                        Text('Items2'),
                        Text('Items3'),
                        Text('Items4'),
                        const SizedBox(
                          width: 25,
                        ),
                      ],
                    ),
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
      bottomNavigationBar: BotNav(idx: 0),
    );
  }
}
