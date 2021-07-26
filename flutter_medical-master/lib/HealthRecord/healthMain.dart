import "package:flutter/material.dart";
import 'package:flutter_medical/HealthRecord/my_health_record.dart';
import 'package:flutter_medical/HealthRecord/select_recoed_type.dart';
import 'package:flutter_medical/HealthRecord/viewReportImage.dart';
import 'package:flutter_medical/constant.dart';
import 'package:flutter_medical/model/recordType.dart';
import 'package:provider/provider.dart';

class HealthPageMain extends StatelessWidget {
  const HealthPageMain({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<RecordType>(
      create: (context) =>
          RecordType(name: " ", select: false, icon: Icon(null), path: " "),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: mBackgroundColor,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: '/MyHealthReport',
        routes: {
          '/MyHealthReport': (context) => MyHealthReport(),
          '/SelectRecordType': (context) => SelectRecordType(),
          '/ViewReportImage': (context) => ReportImage(),
        },
      ),
    );
  }
}
