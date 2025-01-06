import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/framework/theme/colors/app_colors.dart';
import '../../../../../core/framework/theme/sizes/sizes.dart';
import '../../../../../core/framework/theme/spacing /spacing.dart';

class ReusableIconAndTextRow extends StatelessWidget {
  const ReusableIconAndTextRow({
    super.key,
    required this.svg,
    required this.text,
  });
  final String svg;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          svg,
        ),
        const SizedBox(
          width: Spacings.spacing4,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: TextSizes.size12,
            fontWeight: FontWeight.w600,
            color: AppColors.white,
            shadows: [
              Shadow(
                offset: const Offset(
                  1,
                  1,
                ),
                color: AppColors.black.withOpacity(0.4),
                blurRadius: 4.0,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
