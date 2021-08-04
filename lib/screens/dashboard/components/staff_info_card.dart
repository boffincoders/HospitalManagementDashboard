import 'package:flutter/material.dart';
import 'package:hospital_dashboard/models/MyStaff.dart';

import '../../../constants.dart';
import '../../../responsive.dart';

class StaffInfoCards extends StatelessWidget {
  final StaffInfo info;

  const StaffInfoCards({Key? key, required this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      alignment: Alignment.center,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            info.pngSrc!,
            height: !Responsive.isMobile(context) ? 54 : 44,
          ),
          SizedBox(
            width: 10.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                info.title!,
                maxLines: 2,
                softWrap: false,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0),
              ),
              Text(
                "${info.numOfPersons} ",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 16.0),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
