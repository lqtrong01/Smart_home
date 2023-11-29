import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_home/navigate/item.dart';
class SmartDevice extends StatelessWidget {
  final Item item;
  void Function(bool)? onChanged;
  final int idx;
  SmartDevice({super.key,required this.item, required this.onChanged, required this.idx});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          color: item.isActive? Colors.white:Colors.black,
          borderRadius: BorderRadius.circular(24)
        ),
        child: Column(
          children: [
            Image.asset(
              item.iconPath,
              height: 72,
              color: item.isActive? Colors.yellow:Colors.white,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Text(
                      item.deviceName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: item.isActive? Colors.black:Colors.white
                      ),
                    ),
                  ),
                ),
                Transform.rotate(
                  angle: pi,
                  child: CupertinoSwitch(
                    thumbColor: Colors.grey[300],
                    trackColor: Colors.white,
                    activeColor: Colors.cyan,
                    value: item.isActive, 
                    onChanged: onChanged,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}