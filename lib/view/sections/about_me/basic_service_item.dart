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
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: AppColors.secondaryColor,
          borderRadius: BorderRadius.circular(20)),
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
              itemCount: widget.competence.competences.length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Column(children: [
                      SvgPicture.asset(
                          widget.competence.competences[index].logo,
                          height: context.height * 0.04),
                      SizedBox(
                        height: 3,
                      ),
                      if (context.width > DeviceType.mobile.getMinWidth())
                        SizedBox(
                          width: context.width > DeviceType.ipad.getMinWidth()
                              ? context.width * 0.1
                              : context.width * 0.2,
                          child: Text(
                            widget.competence.competences[index].competence,
                            style: AppStyles.s14,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                    ]),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
