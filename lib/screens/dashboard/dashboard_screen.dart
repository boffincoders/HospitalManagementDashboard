import 'package:flutter/material.dart';
import 'package:hospital_dashboard/screens/dashboard/components/dead_patient.dart';
import 'package:hospital_dashboard/screens/dashboard/components/patients_details.dart';
import 'package:hospital_dashboard/screens/dashboard/components/recover_patient.dart';

import '../../constants.dart';
import '../../responsive.dart';
import 'components/header.dart';
import 'components/hospital_staff.dart';
import 'components/my_staff.dart';
import 'components/survey.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyStaff(),
                      SizedBox(height: defaultPadding),
                      HospitalSurvey(),
                      SizedBox(
                        height: 20.0,
                      ),
                      if (!Responsive.isMobile(context))
                        Row(
                          children: [
                            Expanded(flex: 6, child: PatientsDetails()),
                            SizedBox(width: defaultPadding),
                            Expanded(
                                flex: 4,
                                child: Column(
                                  children: [
                                    RecoveryReports(),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    DeathReports()
                                  ],
                                ))
                          ],
                        ),
                      if (Responsive.isMobile(context)) PatientsDetails(),
                      if (Responsive.isMobile(context))
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: RecoveryReports(),
                        ),
                      if (Responsive.isMobile(context))
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: DeathReports(),
                        ),
                      HospitalStaff()
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
