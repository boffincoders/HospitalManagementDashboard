import 'package:flutter/material.dart';
import 'package:hospital_dashboard/models/hispital_staff.dart';

import '../../../constants.dart';
import '../../../responsive.dart';

class HospitalStaff extends StatelessWidget {
  const HospitalStaff({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      margin: EdgeInsets.only(top: 10.0),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hospital Staff",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 17.0),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: 300.0,
            child: ListView.builder(
                itemCount: staffData.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (_, index) {
                  HospitalStaffModel staffInfo = staffData[index];
                  return Container(
                    margin: EdgeInsets.all(10.0),
                    padding: EdgeInsets.symmetric(horizontal: 30.0),
                    height: 300.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          staffInfo.icon!,
                          height: !Responsive.isMobile(context) ? 44 : 40,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          staffInfo.name!,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 17.0),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          staffInfo.designation!,
                          style: TextStyle(
                              color: hintColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 15.0),
                        )
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
