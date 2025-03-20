import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_constants.dart';
import 'package:portfolio/core/utils/app_strings.dart';
import 'package:portfolio/view/sections/about_me/competences_section.dart';
import 'package:universal_html/html.dart' as html;

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_extensions.dart';
import '../../../widgets/custom_divider.dart';
import 'about_me_intro.dart';
import 'experience_info.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AboutMeIntro(),
          const SizedBox(height: 8),
          Center(
            child: CustomDivider(
              color: AppColors.white,
              width: context.width / 4,
              height: 2,
            ),
          ),
          const SizedBox(height: 8),
          const ExperienceInfo(),
          const SizedBox(height: 20),
          const CompetencesSection(),
          TextButton(
            style: ButtonStyle(),
            onPressed: () {
              html.window.open(AppConstants.cvLink, '_blank');
            },
            child: Text(AppStrings.cv),
          )
          // const SizedBox(height: 80),
          // const DetailedServicesSection(),
        ],
      ),
    );
  }
}
