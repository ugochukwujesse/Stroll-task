import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stroll_bonfire/core/framework/theme/spacing%20/spacing.dart';

import '../../../../../core/framework/app_images/app_images.dart';
import '../../../../../core/framework/app_texts/apptexts.dart';
import '../../../../../core/framework/theme/colors/app_colors.dart';
import '../../../../../core/framework/theme/sizes/sizes.dart';
import '../widgets/reusable_icon_and_text_row.dart';
import '../widgets/reusable_icon_container.dart';
import '../widgets/reusable_question_container.dart';

class MatchFragment extends StatelessWidget {
  const MatchFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset(
                Pngs.backgroundVideo,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
              Positioned(
                top: Spacings.spacing10,
                child: Padding(
                  padding: const EdgeInsets.only(top: Spacings.spacing30),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Stack(
                              children: [
                                Text(
                                  'Stroll Bonfire',
                                  style: TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.w700,
                                    foreground: Paint()
                                      ..style = PaintingStyle.stroke
                                      ..strokeWidth = 3
                                      ..color =
                                          AppColors.darkPurple, // Border color
                                  ),
                                ),
                                // Foreground layer (above)
                                const Text(
                                  'Stroll Bonfire',
                                  style: TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.purple, // Text color
                                  ),
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                top: Spacings.spacing5,
                              ),
                              child: Icon(
                                Icons.keyboard_arrow_down_outlined,
                                color: AppColors.purple,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Row(
                        children: [
                          ReusableIconAndTextRow(
                            svg: Svgs.time,
                            text: AppTexts.time,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          ReusableIconAndTextRow(
                            svg: Svgs.smallProfile,
                            text: AppTexts.numberOfPeople,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      AppColors.transparent,
                      AppColors.black,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: Spacings.spacing60,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        Pngs.photo,
                      ),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: Spacings.spacing20,
                              ),
                              child: Text(
                                AppTexts.angelina,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: TextSizes.size12,
                                  color: AppColors.lightGrey,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: Spacings.spacing10,
                                top: Spacings.spacing10,
                                right: Spacings.spacing20,
                              ),
                              child: Text(
                                AppTexts.favoriteTime,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: TextSizes.size20,
                                  color: AppColors.lightGrey,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: Spacings.spacing20,
          ),
          const Text(
            AppTexts.quote,
            style: TextStyle(
              color: AppColors.ash,
            ),
          ),
          const SizedBox(
            height: Spacings.spacing14,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Spacings.spacing20),
            child: Column(
              children: [
                const Row(
                  children: [
                    Expanded(
                      child: ReusableQuestionContainer(
                        optionLabel: AppTexts.a,
                        question: AppTexts.questionA,
                        isSelected: false,
                      ),
                    ),
                    SizedBox(
                      width: Spacings.spacing12,
                    ),
                    Expanded(
                        child: ReusableQuestionContainer(
                      optionLabel: AppTexts.b,
                      question: AppTexts.questionB,
                      isSelected: false,
                    )),
                  ],
                ),
                const SizedBox(
                  height: Spacings.spacing12,
                ),
                const Row(
                  children: [
                    Expanded(
                      child: ReusableQuestionContainer(
                        optionLabel: AppTexts.c,
                        question: AppTexts.questionC,
                        isSelected: false,
                      ),
                    ),
                    SizedBox(
                      width: Spacings.spacing12,
                    ),
                    Expanded(
                        child: ReusableQuestionContainer(
                      optionLabel: AppTexts.d,
                      question: AppTexts.questionD,
                      isSelected: true,
                    )),
                  ],
                ),
                const SizedBox(
                  height: Spacings.spacing20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppTexts.pick,
                          style: TextStyle(
                            color: AppColors.lightGrey,
                            fontWeight: FontWeight.w400,
                            fontSize: TextSizes.size12,
                          ),
                        ),
                        Text(
                          AppTexts.similarMind,
                          style: TextStyle(
                            color: AppColors.lightGrey,
                            fontWeight: FontWeight.w400,
                            fontSize: TextSizes.size12,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        ReusableIconContainer(
                          isColourFilled: false,
                          widget: SvgPicture.asset(Svgs.mic),
                        ),
                        const SizedBox(
                          width: Spacings.spacing6,
                        ),
                        const ReusableIconContainer(
                          isColourFilled: true,
                          widget: Icon(
                            Icons.arrow_forward_outlined,
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
