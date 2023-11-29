import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:smart_home/navigate/db_reader.dart';
import 'package:smart_home/navigate/item.dart';
import 'package:smart_home/screen/smart_device_box.dart';

class RoomScreen extends StatefulWidget {
  final String roomName;
  final int idx;
  const RoomScreen({Key? key, required this.roomName, required this.idx});

  @override
  State<RoomScreen> createState() => _RoomScreenState();
}

class _RoomScreenState extends State<RoomScreen> {
  late DataReader dbReader;
  static List<Item> mySmartDevices = [];

  @override
  void initState() {
    dbReader = DataReader();
    super.initState();
    loadData();
    fetchData();
  }

  static Future<void> loadData() async {
    DataReader reader = DataReader();
    String s = await reader.readData();
    Map<String, dynamic> data = jsonDecode(s);
    mySmartDevices = List<Item>.from(
        (data['smartLights'] as List).map((e) => Item.fromJson(e)));
  }

  void fetchData() async {
    try {
      String data = await dbReader.readData();
      setState(() {
        loadData();
      });
    } catch (e) {
      print('Đã xảy ra lỗi khi lấy dữ liệu: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.black),
          borderRadius: BorderRadius.circular(24),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                widget.roomName +" "+ widget.idx.toString(),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return SmartDevice(
                          item: mySmartDevices[index],
                          onChanged: (value) {
                            setState(() {
                              mySmartDevices[index].isActive = value;
                            });
                          },
                          idx: index,
                        );
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
