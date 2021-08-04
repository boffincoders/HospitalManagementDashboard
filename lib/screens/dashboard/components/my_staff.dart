import 'package:flutter/material.dart';
import 'package:hospital_dashboard/models/MyStaff.dart';
import 'package:hospital_dashboard/screens/dashboard/components/staff_info_card.dart';

import '../../../constants.dart';
import '../../../responsive.dart';

class MyStaff extends StatelessWidget {
  const MyStaff({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Responsive(
      mobile: StaffInfoGridView(
        crossAxisCount: _size.width < 650
            ? 1
            : _size.width > 650 && _size.width < 1400
                ? 2
                : 4,
        childAspectRatio: _size.width < 650 && _size.width > 350
            ? 4
            : _size.width > 650 && _size.width < 1400
                ? 2
                : 1,
      ),
      tablet: StaffInfoGridView(
        crossAxisCount: 2,
        childAspectRatio: 2,
      ),
      desktop: StaffInfoGridView(
        childAspectRatio: _size.width < 1400 ? 1.1 : 1.4,
      ),
    );
  }
}

class StaffInfoGridView extends StatelessWidget {
  const StaffInfoGridView({
    Key? key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demoMyStaff.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) => StaffInfoCards(info: demoMyStaff[index]),
    );
  }
}
