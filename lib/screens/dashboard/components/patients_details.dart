import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hospital_dashboard/models/patients_details.dart';

import '../../../constants.dart';
import '../../../responsive.dart';
import 'header.dart';

class PatientsDetails extends StatelessWidget {
  const PatientsDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        padding: EdgeInsets.all(defaultPadding),
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isMobile(context))
              Column(
                children: [
                  textView(),
                  SizedBox(
                    height: 10.0,
                  ),
                  SearchField(),
                ],
              ),
            if (!Responsive.isMobile(context))
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(flex: 3, child: textView()),
                  Expanded(flex: 5, child: SearchField())
                ],
              ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              width: double.infinity,
              height: 680,
              child: DataTable2(
                columnSpacing: defaultPadding,
                headingRowHeight: defaultPadding * 5,
                minWidth: 00,
                decoration: BoxDecoration(color: Color(0xFF2CABB8)),
                columns: [
                  DataColumn(
                    label: Text("Patient Name"),
                  ),
                  DataColumn(
                    label: Text("Department"),
                  ),
                  if (size.width > 1500)
                    DataColumn(
                      label: Text("Appointment Date"),
                    ),
                  if ((!Responsive.isMobile(context) &&
                          !Responsive.isTablet(context)) ||
                      size.width > 1250)
                    DataColumn(
                      label: Text("Serial Number"),
                    ),
                ],
                rows: List.generate(
                  demoPatientRecords.length,
                  (index) =>
                      patientDataRow(demoPatientRecords[index], context, size),
                ),
              ),
            ),
          ],
        ));
  }
}

DataRow patientDataRow(
    PatientDetailModel fileInfo, BuildContext context, Size size) {
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            Image.asset(
              fileInfo.icon!,
              height: !Responsive.isMobile(context) ? 44 : 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(fileInfo.name!),
            ),
          ],
        ),
      ),
      DataCell(Text(fileInfo.department!)),
      if (size.width > 1500) DataCell(Text(fileInfo.date!)),
      if ((!Responsive.isMobile(context) && !Responsive.isTablet(context)) ||
          size.width > 1250)
        DataCell(Text(fileInfo.serial!)),
    ],
  );
}

Widget textView() => Text(
      "Patients",
      style: TextStyle(
          color: Colors.black, fontWeight: FontWeight.w600, fontSize: 17.0),
    );
