import 'package:flutter/material.dart';

class CarMenuView extends StatelessWidget {
  final IconData icon;
  final String title;
  const CarMenuView({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey.withOpacity(.2),
          ),
        ),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.grey,
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white60,
                fontSize: 20,
              ),
            ),
          )
        ],
      ),
    );
  }
}
