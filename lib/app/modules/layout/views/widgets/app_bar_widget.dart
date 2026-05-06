import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final bool visible;

  const AppBarWidget({super.key, this.visible = true});

  @override
  Widget build(BuildContext context) {
    if (visible) {
      return AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Row(
          mainAxisAlignment: .spaceBetween,
          children: [
            Text(
              '🚜 AGROFY',
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
            ),
            Row(
              spacing: 10,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.person_2,
                    size: 30,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }
    return const SizedBox.shrink();
  }

  @override
  Size get preferredSize => visible ? const Size.fromHeight(kToolbarHeight) : Size.zero;
}
