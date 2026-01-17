import 'package:flutter/material.dart';
import '../../domain/entities/family.dart';
import 'inrow.dart';

class FamilyCard extends StatelessWidget {
  final Family family;

  const FamilyCard({
    super.key,
    required this.family,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🔹 Header (Sitio + Household No)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    family.sitioName,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.deepPurple,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    '#${family.conHouseholdNumber}',
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
              ],
            ), 
            const SizedBox(height: 12), 
            // 🔹 Full Name
            Row(
              children: [
                const Icon(Icons.person, size: 18, color: Colors.deepPurple),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    '${family.conLname}, ${family.conFname} ${family.conMname}',
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 8),
            const Divider(height: 20),

            // 🔹 Details
            InfoRow(
              icon: Icons.badge_outlined,
              label: 'Family ID',
              value: family.conFamilyId,
            ),
          ],
        ),
      ),
    );
  }
}
