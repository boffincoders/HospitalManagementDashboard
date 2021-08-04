import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../constants.dart';

class RecoveryReports extends StatelessWidget {
  const RecoveryReports({Key? key}) : super(key: key);

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
            "Total Recover Report",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 17.0),
          ),
          Divider(),
          SfCartesianChart(primaryXAxis: CategoryAxis(), series: <ChartSeries>[
            LineSeries<SalesData, String>(
                dataSource: [
                  SalesData('Jan', 135, Colors.red),
                  SalesData('Feb', 128, Colors.green),
                  SalesData('Mar', 134, Colors.blue),
                  SalesData('Apr', 132, Colors.greenAccent),
                  SalesData('May', 140, Colors.black)
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

class SalesData {
  SalesData(this.year, this.sales, this.segmentColor);

  final String year;
  final double sales;
  final Color segmentColor;
}
