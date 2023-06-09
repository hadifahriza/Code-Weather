import 'package:flutter/material.dart';
import 'package:open_weather/core/styles/constant_style.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Container(
          padding: const EdgeInsets.symmetric(horizontal: ConstantStyle.padding10),
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(ConstantStyle.radius100),
            color: Theme.of(context).colorScheme.onBackground.withOpacity(ConstantStyle.opacity50),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Icon(
                Icons.search,
                color: Theme.of(context).colorScheme.onBackground,
              ),
              const SizedBox(width: ConstantStyle.width10),
              Expanded(
                child: TextFormField(
                  controller: TextEditingController(),
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.close,
              color: Theme.of(context).colorScheme.onBackground,
            ),
          ),
        ],
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: ConstantStyle.padding10, vertical: ConstantStyle.padding10),
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {},
            dense: true,
            contentPadding: EdgeInsets.zero,
            leading: Icon(
              Icons.location_on,
              color: Theme.of(context).colorScheme.onBackground,
            ),
            title: Text(
              'Location',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            trailing: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '72 F',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(width: 10),
                Icon(
                  Icons.cloud,
                  color: Theme.of(context).colorScheme.onBackground,
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) => Divider(
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
    );
  }
}
