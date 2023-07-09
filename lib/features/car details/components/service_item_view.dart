import 'package:flutter/material.dart';

class ServiceItemView extends StatelessWidget {
  final String itemTitle;
  const ServiceItemView({super.key, required this.itemTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Container(
            width: 5,
            height: 5,
            margin: const EdgeInsets.only(right: 5),
            decoration: const BoxDecoration(
              color: Colors.orange,
              shape: BoxShape.circle,
            ),
          ),
          Expanded(
              child: Text(
            itemTitle,
            style: const TextStyle(color: Colors.grey),
          ))
        ],
      ),
    );
  }
}
