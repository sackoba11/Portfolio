import 'package:flutter/material.dart';
import 'package:portfolio/core/models/competence.dart';

import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';
import 'basic_service_item.dart';

class BasicServicesGrid extends StatelessWidget {
  const BasicServicesGrid({super.key, required this.competence});
  final List<Competence> competence;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: _getCrossAxisCount(context.width),
        crossAxisSpacing: 17,
        childAspectRatio: _getAspectRatio(context.width),
        mainAxisSpacing: 15,
      ),
      itemBuilder: (context, index) {
        return BasicServiceItem(
          competence: competence[index],
        );
      },
      itemCount: competence.length,
    );
  }

  int _getCrossAxisCount(double deviceWidth) {
    int numOfServices = competence.length;
    if (deviceWidth < DeviceType.mobile.getMaxWidth()) {
      return 1;
    } else if (deviceWidth < DeviceType.ipad.getMaxWidth()) {
      return 2;
    } else if (deviceWidth < DeviceType.smallScreenLaptop.getMaxWidth()) {
      return 3;
    } else if (deviceWidth > DeviceType.smallScreenLaptop.getMaxWidth() &&
        deviceWidth < DeviceType.largeScreenDesktop.getMaxWidth()) {
      return 5;
    } else {
      return numOfServices > 1 ? 6 : numOfServices;
    }
  }

  double _getAspectRatio(double deviceWidth) {
    if (deviceWidth < DeviceType.mobile.getMinWidth()) {
      return 1.1;
    } else if (deviceWidth < DeviceType.ipad.getMinWidth()) {
      return 1.4;
    } else if (deviceWidth < DeviceType.smallScreenLaptop.getMaxWidth()) {
      return 1.5;
    } else {
      return 1.6;
    }
  }
}
