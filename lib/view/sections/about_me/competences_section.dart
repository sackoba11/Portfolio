import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_constants.dart';

import '../../../core/utils/app_strings.dart';
import '../../../core/utils/app_styles.dart';
import 'basic_services_grid.dart';

class CompetencesSection extends StatelessWidget {
  const CompetencesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          child: Text(
            AppStrings.competences,
            style: AppStyles.s32,
          ),
        ),
        const SizedBox(height: 32),
        Text(
          AppStrings.langages,
          style: AppStyles.s24,
        ),
        const SizedBox(height: 20),
        BasicServicesGrid(
          competence: AppConstants.langages,
        ),
        const SizedBox(height: 32),
        Text(
          AppStrings.frontend,
          style: AppStyles.s24,
        ),
        const SizedBox(height: 20),
        const BasicServicesGrid(
          competence: AppConstants.framework,
        ),
        const SizedBox(height: 32),
        Text(
          AppStrings.backend,
          style: AppStyles.s24,
        ),
        const SizedBox(height: 20),
        const BasicServicesGrid(
          competence: AppConstants.backend,
        ),
        const SizedBox(height: 32),
        Text(
          AppStrings.methodologies,
          style: AppStyles.s24,
        ),
        const SizedBox(height: 20),
        const BasicServicesGrid(
          competence: AppConstants.methodologies,
        ),
      ],
    );
  }
}
