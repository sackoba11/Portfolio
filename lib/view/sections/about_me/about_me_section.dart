import 'package:flutter/material.dart';
import 'package:portfolio/view/sections/about_me/competences_section.dart';
import 'package:portfolio/view/sections/about_me/training_section.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_extensions.dart';
import '../../../widgets/custom_divider.dart';
import 'about_me_intro.dart';
import 'detailed_services_section.dart';
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
          const SizedBox(height: 58),
          const CompetencesSection(),
          const SizedBox(height: 58),
          const TrainingSection(),
          const SizedBox(height: 80),
          const DetailedServicesSection(),
        ],
      ),
    );
  }
}
