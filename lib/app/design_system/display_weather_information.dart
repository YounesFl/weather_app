import 'package:flutter/material.dart';

class DisplayWeatherInformation extends StatelessWidget {
  const DisplayWeatherInformation({super.key, 
    required this.data,
  });

  final String data;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            data,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Theme.of(context).colorScheme.primary),
          ),
        ),
      ],
    );
  }
}
