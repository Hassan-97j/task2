import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task2/bindings/dateselectionbinding.dart';
import 'package:task2/routes/approutes.dart';
import 'package:task2/routes/pagesnames.dart';
import 'package:task2/screens/dateselection/dateselectionview.dart';
import 'package:task2/themes/customtheme/mythemes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: MyTheme.lightTheme,
      home: const DateSelectionView(),
      initialRoute: PagesNames.dateselectionscreen,
      initialBinding: DateSelectionBindingBinding(),
      getPages: appRoutes(),
    );
  }
}
