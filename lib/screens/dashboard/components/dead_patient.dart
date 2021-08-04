import 'package:flutter/material.dart';
import 'package:hospital_dashboard/screens/dashboard/components/recover_patient.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../constants.dart';

class DeathReports extends StatelessWidget {
  const DeathReports({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Total Death Report",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 17.0),
          ),
          Divider(),
          SfCartesianChart(primaryXAxis: CategoryAxis(), series: <ChartSeries>[
            LineSeries<SalesData, String>(
                dataSource: [
                  SalesData('Jan', 8, Colors.green),
                  SalesData('Feb', 3, Colors.red),
                  SalesData('Mar', 5, Colors.blue),
                  SalesData('Apr', 10, Colors.green),
                  SalesData('May', 6, Colors.red)
                ],
                // Bind the color for all the data points from the data source
                pointColorMapper: (SalesData sales, _) => sales.segmentColor,
                xValueMapper: (SalesData sales, _) => sales.year,
                yValueMapper: (SalesData sales, _) => sales.sales)
          ])
        ],
      ),
    );
  }
}
