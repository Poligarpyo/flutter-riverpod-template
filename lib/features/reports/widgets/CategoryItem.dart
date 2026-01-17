import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../router/app_router.dart';

class CategoryItem extends StatelessWidget {
  final String label;

  const CategoryItem(
      {super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: ListTile(
        title: Text(
          label,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {
          switch (label) {
            case 'List of Household':
              context.go(SGRoute.household.route);
              break;
            case 'List of Family':
              context.go(SGRoute.family.route);
              break;
            case 'List of Individual':
              context.go(SGRoute.indiv.route);
              break;
            default:
              // Handle unknown destination
              break;
          }
        },
      ),
    );
  }
}
