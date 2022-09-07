import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task2/config/sizes.dart';

// ignore: must_be_immutable
class PackageBox extends StatelessWidget {
  PackageBox({
    this.description,
    this.asset,
    this.price,
    Key? key,
  }) : super(key: key);

  String? description;
  String? asset;
  String? price;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(getProportionateScreenWidth(12)),
      elevation: 6,
      shadowColor: Get.theme.colorScheme.surface,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(getProportionateScreenWidth(12)),
          border: Border.all(
            color: Get.theme.colorScheme.background,
            width: 2,
          ),
        ),
        height: SizeConfig.screenHeight * 0.22,
        width: SizeConfig.screenWidth,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Material(
                borderRadius:
                    BorderRadius.circular(getProportionateScreenWidth(12)),
                elevation: 6,
                shadowColor: Get.theme.colorScheme.surface,
                child: Container(
                  decoration: BoxDecoration(
                      color: Get.theme.colorScheme.onPrimary,
                      borderRadius: BorderRadius.circular(
                          getProportionateScreenWidth(12)),
                      border: Border.all(
                        color: Get.theme.colorScheme.background,
                        width: 2,
                      )),
                  height: SizeConfig.screenHeight * 0.21,
                  width: SizeConfig.screenWidth * 0.18,
                  child: Image.asset(
                    asset!,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: getProportionateScreenWidth(10),
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: SizedBox(
                        height: SizeConfig.screenHeight * 0.08,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: getProportionateScreenHeight(14),
                            ),
                            Text(
                              '$description (\$ ${int.parse(price.toString()).toString()})',
                              style: TextStyle(
                                fontSize: getProportionateScreenWidth(14),
                              ),
                            ),
                            Text(
                              'you\'ll get \$ 10 off from this package',
                              style: TextStyle(
                                fontSize: getProportionateScreenWidth(14),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: SizedBox(
                      height: SizeConfig.screenHeight * 0.12,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Material(
                                  borderRadius: BorderRadius.circular(
                                      getProportionateScreenWidth(12)),
                                  elevation: 6,
                                  shadowColor: Get.theme.colorScheme.surface,
                                  child: Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                getProportionateScreenWidth(
                                                    12)),
                                            border: Border.all(
                                              color: Get
                                                  .theme.colorScheme.background,
                                              width: 2,
                                            )),
                                        height: SizeConfig.screenHeight * 0.09,
                                        child: Image.asset(
                                          'assets/washingmachine.png',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  'Wash',
                                  style: TextStyle(
                                      fontSize:
                                          getProportionateScreenWidth(13)),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: getProportionateScreenWidth(12),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Material(
                                  borderRadius: BorderRadius.circular(
                                      getProportionateScreenWidth(12)),
                                  elevation: 6,
                                  shadowColor: Get.theme.colorScheme.surface,
                                  child: Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                getProportionateScreenWidth(
                                                    12)),
                                            border: Border.all(
                                              color: Get
                                                  .theme.colorScheme.background,
                                              width: 2,
                                            )),
                                        height: SizeConfig.screenHeight * 0.09,
                                        child: Image.asset(
                                          'assets/tshirtinhanger.jpeg',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  'dry clean',
                                  style: TextStyle(
                                      fontSize:
                                          getProportionateScreenWidth(13)),
                                ),
                                SizedBox(
                                  width: getProportionateScreenWidth(8),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: getProportionateScreenWidth(12),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Material(
                                  borderRadius: BorderRadius.circular(
                                      getProportionateScreenWidth(12)),
                                  elevation: 6,
                                  shadowColor: Get.theme.colorScheme.surface,
                                  child: Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                getProportionateScreenWidth(
                                                    12)),
                                            border: Border.all(
                                              color: Get
                                                  .theme.colorScheme.background,
                                              width: 2,
                                            )),
                                        height: SizeConfig.screenHeight * 0.09,
                                        child: Image.asset(
                                          'assets/iron.png',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  'Iron',
                                  style: TextStyle(
                                      fontSize:
                                          getProportionateScreenWidth(13)),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: getProportionateScreenWidth(12),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
