import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class SurveyChart extends StatelessWidget {
  const SurveyChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: SfCartesianChart(
            // Initialize category axis
            primaryXAxis: CategoryAxis(),
            series: <LineSeries<SalesData, String>>[
          LineSeries<SalesData, String>(
              // Bind data source
              dataSource: <SalesData>[
                SalesData('2020', 60),
                SalesData('Jan', 35),
                SalesData('Feb', 28),
                SalesData('Mar', -14),
                SalesData('Apr', 32),
                SalesData('May', -10),
                SalesData('June', 30),
                SalesData('July', 37)
              ],
              xValueMapper: (SalesData sales, _) => sales.year,
              yValueMapper: (SalesData sales, _) => sales.sales)
        ]));
  }
}

class SalesData {
  SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
