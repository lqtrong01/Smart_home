import 'package:flutter/material.dart';
import 'package:smart_home/navigate/bot_nav.dart';
import 'package:smart_home/screen/room_type.dart';
import 'package:smart_home/screen/smart_device_box.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final double horizontalPadding = 25;
  final double verticalPadding = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 50, // Set the desired height
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: horizontalPadding,
                vertical: verticalPadding,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.settings,
                    size: 20,
                    color: Colors.grey[800],
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: const Divider(
              thickness: 1,
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'My Device',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.grey,
                      ),
                    ),

                    Icon(
                      Icons.account_circle,
                      size: 44,
                      color: Colors.black38,
                    )
                  ],
                )
              ],
            )
          ),
          
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 3, // Adjust the number based on your needs
              itemBuilder: (context, index) {
                return RoomScreen(
                  roomName: index == 0
                      ? 'LivingRoom'
                      : index == 1
                          ? 'BedRoom'
                          : 'Phòng Khách',
                  idx: index,
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BotNav(idx: 1),
    );
  }
}
