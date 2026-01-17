import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:ionicons/ionicons.dart';

import '../../../../utils/context_extensions.dart';
import 'widgets/CategoryItem.dart';
import 'widgets/header.dart';
import 'widgets/language_tile.dart';
import 'widgets/social_tile_widget.dart';
import 'widgets/theme_widget.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon:
                Icon(Icons.logout_outlined, color: context.colorScheme.primary),
            onPressed: () {
              context.pop();
            }),
      ),
      backgroundColor: context.colorScheme.surface,
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(text: 'intro'),
            SizedBox(height: 20),
            CategoryItem(label: 'List of Household'),
            CategoryItem(label: 'List of Family'),
            CategoryItem(label: 'List of Individual'),
          ],
        ),
      ),
    );
  }
}
