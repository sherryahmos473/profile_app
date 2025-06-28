import 'package:flutter/material.dart';
import 'package:profile/core/constants/constants.dart';

class GenderSelectorBody extends StatelessWidget {
  const GenderSelectorBody({
    super.key,
    required this.gender,
    required this.isSelected,
    required this.onTap,
  });

  final String gender;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 5),
        decoration: BoxDecoration(
          color: kLightOrange,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: isSelected ? primaryColor : Colors.transparent,
            width: 1.5,
          ),
        ),
        child: Row(
          children: [
            Radio<String>(
              value: gender,
              groupValue: isSelected ? gender : null,
              onChanged: (_) => onTap(),
              activeColor: primaryColor,
            ),
            Text(
              gender,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black87,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
