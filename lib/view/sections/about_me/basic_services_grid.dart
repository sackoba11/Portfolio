import 'package:flutter/material.dart';
import 'package:portfolio/core/models/domaine.dart';

import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';
import 'basic_service_item.dart';

class BasicServicesGrid extends StatelessWidget {
  const BasicServicesGrid({super.key, required this.domaine});
  final List<Domaine> domaine;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: _getCrossAxisCount(context.width),
        crossAxisSpacing: 16,
        childAspectRatio: _getAspectRatio(context.width),
        mainAxisSpacing: 16,
      ),
      itemBuilder: (context, index) {
        return BasicServiceItem(
          competence: domaine[index],
        );
      },
      itemCount: domaine.length,
    );
  }

  int _getCrossAxisCount(double deviceWidth) {
    int numOfServices = domaine.length;
    if (deviceWidth < DeviceType.mobile.getMaxWidth()) {
      return 1;
    } else if (deviceWidth < DeviceType.ipad.getMaxWidth()) {
      return 1;
    } else if (deviceWidth < DeviceType.smallScreenLaptop.getMaxWidth()) {
      return 2;
    } else if (deviceWidth < DeviceType.largeScreenDesktop.getMaxWidth()) {
      return 3;
    } else {
      return numOfServices > 4 ? 4 : numOfServices;
    }
  }

  double _getAspectRatio(double deviceWidth) {
    if (deviceWidth < DeviceType.mobile.getMinWidth()) {
      return 1.2;
    } else if (deviceWidth < DeviceType.ipad.getMinWidth()) {
      return 1.3;
    } else if (deviceWidth < DeviceType.smallScreenLaptop.getMaxWidth()) {
      return 1.4;
    } else {
      return 1.24;
    }
  }
}
