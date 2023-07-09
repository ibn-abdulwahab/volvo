import 'package:flutter/material.dart';

class LabelAndText extends StatelessWidget {
  final String label, text;
  final bool centerText;
  final String? secondaryText;
  const LabelAndText(
      {super.key,
      required this.label,
      required this.text,
      this.centerText = false,
      this.secondaryText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment:
          centerText ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: [
        Text(
          label.toUpperCase(),
          style: Theme.of(context).textTheme.labelSmall!.copyWith(
                color: Colors.grey,
                fontSize: 8,
              ),
        ),
        secondaryText != null
            ? Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  Text(
                    secondaryText!,
                    style: const TextStyle(
                      fontSize: 10,
                      color: Colors.white70,
                    ),
                  ),
                ],
              )
            : Text(
                text,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
      ],
    );
  }
}
