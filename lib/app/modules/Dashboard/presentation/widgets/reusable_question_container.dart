import 'package:flutter/material.dart';

import '../../../../../core/framework/theme/colors/app_colors.dart';
import '../../../../../core/framework/theme/sizes/sizes.dart';
import '../../../../../core/framework/theme/spacing /spacing.dart';

class ReusableQuestionContainer extends StatelessWidget {
  const ReusableQuestionContainer({
    super.key,
    required this.optionLabel,
    required this.question,
    required this.isSelected,
  });
  final String optionLabel;
  final String question;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: Spacings.spacing10,
        vertical: Spacings.spacing12,
      ),
      decoration: BoxDecoration(
        color: AppColors.darkGrey,
        borderRadius: BorderRadius.circular(
          Spacings.spacing16,
        ),
        border: isSelected
            ? Border.all(
                width: 2,
                color: AppColors.mediumPurple,
              )
            : Border.all(),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(
              Spacings.spacing6,
            ),
            decoration: BoxDecoration(
              color:
                  isSelected ? AppColors.mediumPurple : AppColors.transparent,
              shape: BoxShape.circle,
              border: Border.all(
                width: 1,
                color:
                    isSelected ? AppColors.mediumPurple : AppColors.mediumGrey,
              ),
            ),
            child: Text(
              optionLabel,
              style: const TextStyle(
                color: AppColors.mediumGrey,
                fontSize: TextSizes.size12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(
            width: Spacings.spacing10,
          ),
          Expanded(
            child: Text(
              question,
              style: const TextStyle(
                color: AppColors.mediumGrey,
                fontSize: TextSizes.size14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
