//import 'dart:async';
import 'package:smart_watch_app/ventanas/primer.dart';
import 'package:flutter/material.dart';
//import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Primero(),
    );
  }
}

/*
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Watch',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyClock(),
    );
  }
}

class MyClock extends StatefulWidget {
  @override
  _MyClockState createState() => _MyClockState();
}

class _MyClockState extends State<MyClock> {
  DateTime _dateTime = DateTime.now();
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _updateTime();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _updateTime() {
    setState(() {
      _dateTime = DateTime.now();
      // Actualiza cada minuto
      _timer = Timer(
        Duration(minutes: 1) - Duration(seconds: _dateTime.second),
        _updateTime,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final hour = DateFormat('HH').format(_dateTime); // Formato de 24 horas
    final hour12 = DateFormat('hh').format(_dateTime); // Formato de 12 horas
    final minute = DateFormat('mm').format(_dateTime);
    final amPm = DateFormat('a').format(_dateTime);
    final day = DateFormat('EEE, MMM d').format(_dateTime);

    return Semantics(
      label: 'Clock with time $hour:$minute $amPm and date $day',
      child: Stack(
        children: [
          // Fondo de pantalla del modo ambiente
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/525.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Contenido del reloj en el modo normal
          Container(
            color: Colors.transparent,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '${hour12}:${minute} ${amPm}',
                    style: TextStyle(
                      fontSize: 60.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    day,
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}*/
