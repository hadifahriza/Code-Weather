import 'package:flutter/material.dart';
import 'package:open_weather/core/constants/message_constants.dart';
import 'package:open_weather/core/styles/constant_style.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        shadowColor: Theme.of(context).colorScheme.background,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Theme.of(context).colorScheme.onBackground,
          ),
        ),
        title: Text(
          'Settings',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: ConstantStyle.padding10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              onTap: () {},
              contentPadding: EdgeInsets.zero,
              dense: true,
              title: Text(
                'Different weather?',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: ConstantStyle.size16,
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
            ListTile(
              onTap: () {},
              contentPadding: EdgeInsets.zero,
              dense: true,
              title: Text(
                'Customize Unit',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: ConstantStyle.size16,
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              dense: true,
              title: Text(
                'Data',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              trailing: Text(
                'One Call API',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            Text(
              MessagesConstants.loremIpsum,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
