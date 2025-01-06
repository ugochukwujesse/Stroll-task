import 'package:flutter/material.dart';

import '../../../../../core/framework/theme/colors/app_colors.dart';
import '../../../../../core/framework/theme/spacing /spacing.dart';

class ReusableIconContainer extends StatelessWidget {
  const ReusableIconContainer({
    super.key,
    required this.isColourFilled,
    required this.widget,
  });
  final bool isColourFilled;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Spacings.spacing10),
      decoration: BoxDecoration(
        border: Border.all(
          width: isColourFilled ? 0 : 2,
          color: AppColors.mediumPurple,
        ),
        color: isColourFilled ? AppColors.mediumPurple : AppColors.transparent,
        shape: BoxShape.circle,
      ),
      child: widget,
    );
  }
}
