import 'package:flutter/material.dart';

class StaffInfo {
  final String? pngSrc, title;
  final int? numOfPersons;

  StaffInfo({
    this.pngSrc,
    this.title,
    this.numOfPersons,
  });
}

List demoMyStaff = [
  StaffInfo(
    title: "Doctors",
    numOfPersons: 520,
    pngSrc: "assets/images/doctor.png",
  ),
  StaffInfo(
    title: "Nurses",
    numOfPersons: 6969,
    pngSrc: "assets/images/nurse.png",
  ),
  StaffInfo(
    title: "Patients",
    numOfPersons: 7509,
    pngSrc: "assets/images/bed.png",
  ),
  StaffInfo(
    title: "Pharmacusts",
    numOfPersons: 2110,
    pngSrc: "assets/images/pharm.png",
  ),
];
