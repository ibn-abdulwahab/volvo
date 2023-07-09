import 'package:flutter/material.dart';

class FancyCircularProgress extends StatelessWidget {
  const FancyCircularProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.cyan,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircularProgressIndicator(
                strokeWidth: 2,
                value: 0.72,
                color: Colors.white,
                backgroundColor: Colors.white.withOpacity(.4),
                semanticsLabel: '72%',
              ),
              const Text(
                '75%',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                ),
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue.shade800,
          ),
          child: const Icon(
            Icons.ev_station_rounded,
            size: 10,
          ),
        ),
      ],
    );
  }
}
