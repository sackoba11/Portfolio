import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/core/models/domaine.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';
import '../../../../core/utils/app_styles.dart';

class BasicServiceItem extends StatefulWidget {
  const BasicServiceItem({super.key, required this.competence});

  final Domaine competence;

  @override
  State<BasicServiceItem> createState() => _BasicServiceItemState();
}

class _BasicServiceItemState extends State<BasicServiceItem> {
  Color itemColor = AppColors.scaffoldColor;
  ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: AppColors.primaryLight,
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            widget.competence.titre,
            style: AppStyles.s16,
          ),
          const SizedBox(height: 12),
          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: widget.competence.competences.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 4,
                mainAxisSpacing: 4,
              ),
              itemBuilder: (context, index) {
                return Column(children: [
                  Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: SvgPicture.asset(
                        widget.competence.competences[index].logo,
                        height: context.height * 0.04),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  if (context.width > DeviceType.mobile.getMinWidth())
                    Expanded(
                      flex: 2,
                      child: AutoSizeText(
                        widget.competence.competences[index].competence,
                        style: AppStyles.s14,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                      ),
                    ),
                ]);
              },
            ),
          )
        ],
      ),
    );
  }
}
