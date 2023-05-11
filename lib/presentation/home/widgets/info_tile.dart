import 'package:flutter/material.dart';

class InfoTile extends StatelessWidget {
  final String label;
  final String? value;

  const InfoTile({
    super.key,
    required this.label,
    this.value,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      dense: true,
      title: Text(
        label,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      trailing: Text(
        value ?? '',
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}
