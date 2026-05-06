import 'package:flutter/material.dart';

class CardResume extends StatelessWidget {
  final String title;
  final String value;
  final String subtitle;
  final Color valueColor;

  const CardResume({
    super.key,
    required this.title,
    required this.value,
    required this.subtitle,
    required this.valueColor,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Theme.of(context).colorScheme.onSurface),
      ),
      shadowColor: const Color.fromARGB(255, 65, 65, 65),
      color: Theme.of(context).colorScheme.onSurface,
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: textTheme.bodyLarge?.copyWith(
                color: Colors.grey.shade600,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(value, style: textTheme.titleSmall?.copyWith(color: valueColor, fontSize: 28)),
            const SizedBox(height: 4),
            Text(
              subtitle,
              style: textTheme.bodyMedium?.copyWith(fontSize: 12, color: Colors.grey.shade500),
            ),
          ],
        ),
      ),
    );
  }
}
