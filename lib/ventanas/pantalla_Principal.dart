import 'dart:async';
import 'package:wear/wear.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Principal extends StatefulWidget {
  final WearMode mode;

  const Principal(this.mode);

  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  DateTime now = DateTime.now();
  int batteryLevel = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              widget.mode == WearMode.active
                  ? Color.fromARGB(255, 255, 0, 0)
                  : Color.fromARGB(220, 255, 255, 255),
              widget.mode == WearMode.active
                  ? Color.fromARGB(255, 0, 0, 0)
                  : Color.fromARGB(220, 3, 218, 251),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${now.hour}:${now.minute}:${now.second}',
              style: const TextStyle(
                fontSize: 26,
                color: Colors.white,
                fontFamily: 'Arial',
                letterSpacing: 2,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              DateFormat('d MMMM yyyy').format(DateTime.now()),
              style: const TextStyle(
                color: Color.fromARGB(255, 94, 255, 0),
                fontSize: 12,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
              ),
            ),
            const SizedBox(height: 5),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '°C',
                  style: const TextStyle(
                    color: Colors.green,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'OpenSans',
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  '°C',
                  style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              'Battery Level: $batteryLevel%',
              style: const TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontFamily: 'Verdana',
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget buildAmbientContent(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              DateFormat('d MMM').format(DateTime.now()),
              style: const TextStyle(
                fontSize: 12,
                color: Colors.white,
                fontFamily: 'Verdana',
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              DateFormat('h:mm a').format(now),
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontFamily: 'Verdana',
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Battery Level: $batteryLevel%',
              style: const TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontFamily: 'Verdana',
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
