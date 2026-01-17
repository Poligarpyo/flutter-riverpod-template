import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../utils/context_extensions.dart';
import '../home/presentation/widgets/header.dart';
import 'widgets/CategoryItem.dart';

class ReportScreen extends ConsumerWidget {
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reports'),
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
