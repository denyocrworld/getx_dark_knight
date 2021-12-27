import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

bool enablePhoneSimulator = true;

class GetPhoneSimulator extends StatefulWidget {
  final Widget child;
  GetPhoneSimulator({
    required this.child,
  });

  @override
  _GetPhoneSimulatorState createState() => _GetPhoneSimulatorState();
}

class _GetPhoneSimulatorState extends State<GetPhoneSimulator> {
  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      return widget.child;
    } else if (Platform.isAndroid) {
      return widget.child;
    }

    if (enablePhoneSimulator == false) return widget.child;

    return Scaffold(
      backgroundColor: Color(0xffDEEFFB),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(12.0),
            width: Get.width,
            decoration: BoxDecoration(
              color: Colors.blueGrey[900],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
            child: Row(
              children: [
                Text(
                  // DateFormat("kk:mm").format(DateTime.now()),
                  "5:17 AM",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 8.0,
                ),
                InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.screenshot,
                    size: 20.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 8.0,
                ),
                Icon(
                  Icons.circle,
                  size: 6.0,
                  color: Colors.white,
                ),
                Spacer(),
                Icon(
                  Icons.notifications,
                  size: 20.0,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 8.0,
                ),
                Icon(
                  Icons.wifi,
                  size: 20.0,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 8.0,
                ),
                Icon(
                  Icons.signal_cellular_alt_sharp,
                  size: 20.0,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 8.0,
                ),
                Icon(
                  Icons.battery_charging_full,
                  size: 20.0,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: widget.child,
            ),
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            width: Get.width,
            decoration: BoxDecoration(
              color: Colors.blueGrey[900],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.crop_square_outlined,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 20.0,
                ),
                Icon(
                  Icons.circle_outlined,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 20.0,
                ),
                InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.chevron_left,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
