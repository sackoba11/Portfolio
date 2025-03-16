import 'package:flutter/material.dart';

import '../../../core/utils/app_strings.dart';
import '../../../core/utils/app_styles.dart';

class TrainingSection extends StatelessWidget {
  const TrainingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          child: Text(
            AppStrings.formation,
            style: AppStyles.s32,
          ),
        ),
        const SizedBox(height: 32),
        Text(
          AppStrings.langages,
          style: AppStyles.s24,
        ),
        // const SizedBox(height: 20),
        // const BasicServicesGrid(),
        // const SizedBox(height: 32),
        // Text(
        //   AppStrings.frontend,
        //   style: AppStyles.s24,
        // ),
        // const SizedBox(height: 20),
        // const BasicServicesGrid(),
        // const SizedBox(height: 32),
        // Text(
        //   AppStrings.backend,
        //   style: AppStyles.s24,
        // ),
        // const SizedBox(height: 20),
        // const BasicServicesGrid(),
        // const SizedBox(height: 32),
        // Text(
        //   AppStrings.methodologies,
        //   style: AppStyles.s24,
        // ),
        // const SizedBox(height: 20),
        // const BasicServicesGrid(),
      ],
    );
  }
}
