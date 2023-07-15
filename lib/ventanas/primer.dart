import 'package:smart_watch_app/ventanas/pantalla_Principal.dart';
import 'package:flutter/material.dart';
import 'package:wear/wear.dart';

class Primero extends StatelessWidget {
  Primero({super.key});

  @override
  Widget build(BuildContext context) {
    return WatchShape(
      builder: (context, shape, child) {
        return AmbientMode(
          builder: (context, mode, child) {
            return Principal(mode);
          },
        );
      },
    );
  }
}
