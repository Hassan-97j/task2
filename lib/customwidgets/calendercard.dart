import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task2/config/sizes.dart';

// ignore: must_be_immutable
class CalenderCard extends StatelessWidget {
  CalenderCard({
    Key? key,
    this.day,
    this.date,
    this.text,
  }) : super(key: key);

  String? day;
  String? date;
  String? text;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(getProportionateScreenWidth(12)),
      elevation: 6,
      shadowColor: Get.theme.colorScheme.surface,
      child: Container(
        decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(getProportionateScreenWidth(12))),
        height: SizeConfig.screenHeight * 0.10,
        width: SizeConfig.screenWidth * 0.18,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Get.theme.colorScheme.onPrimary,
                  borderRadius: BorderRadius.vertical(
                      top: Radius.circular(getProportionateScreenWidth(12)))),
              height: SizeConfig.screenHeight * 0.04,
              width: SizeConfig.screenWidth * 0.18,
              child: FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    day!,
                  )),
            ),
            Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(6)),
              decoration: BoxDecoration(
                  color: Get.theme.colorScheme.background,
                  borderRadius: BorderRadius.vertical(
                      bottom:
                          Radius.circular(getProportionateScreenWidth(18)))),
              height: SizeConfig.screenHeight * 0.06,
              width: SizeConfig.screenWidth * 0.18,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Column(
                  children: [
                    Text(date!),
                    Text(text!),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
