import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task2/config/sizes.dart';
import 'package:task2/customwidgets/calendercard.dart';
import 'package:task2/customwidgets/mybutton.dart';
import 'package:task2/routes/pagesnames.dart';
import 'package:task2/screens/dateselection/dateselectioncontroller.dart';

class DateSelectionView extends StatelessWidget {
  static String routeName = Pages.dateselection;
  const DateSelectionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Pickup Date'),
        titleTextStyle: TextStyle(
          color: Get.theme.colorScheme.primary,
          fontSize: getProportionateScreenWidth(18),
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: Get.theme.scaffoldBackgroundColor,
        elevation: 3,
        shadowColor: Get.theme.colorScheme.secondary.withGreen(256),
        actions: [
          IconButton(
            icon: Icon(
              Icons.menu,
              color: Get.theme.colorScheme.primary,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(24)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: getProportionateScreenHeight(18),
              ),
              Row(
                children: [
                  Text(
                    'When would you like your pickup?',
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(16),
                      color: Get.theme.colorScheme.surface,
                    ),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(24),
                  ),
                  Icon(
                    Icons.calendar_view_month,
                    color: Get.theme.colorScheme.primary,
                  )
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(18),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                    Get.find<DateSelectionController>().cac.length,
                    (index) => CalenderCard(
                          day: Get.find<DateSelectionController>().cac[index]
                              ['day'],
                          date: Get.find<DateSelectionController>().cac[index]
                              ['date'],
                          text: Get.find<DateSelectionController>().cac[index]
                              ['text'],
                        )),
              ),
              SizedBox(
                height: getProportionateScreenHeight(18),
              ),
              Center(
                child: Text(
                  'Available Time Slots',
                  style: TextStyle(
                    color: Get.theme.colorScheme.surface,
                    fontSize: getProportionateScreenWidth(16),
                  ),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(18),
              ),
              Wrap(
                children: List.generate(
                  Get.find<DateSelectionController>().chips.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: GestureDetector(
                      onTap: (() {}),
                      child: Chip(
                        label: Text(
                          Get.find<DateSelectionController>().chips[index]
                              ['time'],
                        ),
                        backgroundColor: Get.find<DateSelectionController>()
                            .chips[index]['Color'],
                        elevation: 6,
                        shadowColor: Get.theme.colorScheme.surface,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                getProportionateScreenWidth(10))),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(18),
              ),
              Material(
                borderRadius:
                    BorderRadius.circular(getProportionateScreenWidth(12)),
                elevation: 6,
                shadowColor: Get.theme.colorScheme.surface,
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Repeat Pickup',
                        style: TextStyle(
                          color: Get.theme.colorScheme.surface,
                          fontSize: getProportionateScreenWidth(16),
                        ),
                      ),
                      GetBuilder<DateSelectionController>(
                        init: DateSelectionController(),
                        initState: (_) {},
                        builder: (_) {
                          return Switch(
                              activeTrackColor: Get.theme.colorScheme.primary,
                              activeColor: Get.theme.colorScheme.background,
                              inactiveTrackColor:
                                  Get.theme.colorScheme.onPrimary,
                              inactiveThumbColor:
                                  Get.theme.colorScheme.onBackground,
                              value: Get.find<DateSelectionController>()
                                  .switchChange,
                              onChanged: (value) {
                                Get.find<DateSelectionController>()
                                    .onChanged(value);
                              });
                        },
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(18),
              ),
              Row(
                children: [
                  SizedBox(
                    width: getProportionateScreenWidth(53),
                  ),
                  const Text('How often repeat?'),
                  const Spacer()
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(8),
              ),
              Material(
                borderRadius:
                    BorderRadius.circular(getProportionateScreenWidth(12)),
                elevation: 6,
                shadowColor: Get.theme.colorScheme.surface,
                child: Container(
                  // width: SizeConfig.screenWidth,
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(10)),
                  child: GetBuilder<DateSelectionController>(
                    init: DateSelectionController(),
                    initState: (_) {},
                    builder: (_) {
                      return DropdownButton(
                        borderRadius: BorderRadius.zero,
                        isExpanded: true,
                        value:
                            Get.find<DateSelectionController>().dropdownvalue,
                        items: Get.find<DateSelectionController>()
                            .items
                            .map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          Get.find<DateSelectionController>()
                              .dropdownchange(newValue);
                        },
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(18),
              ),
              Row(
                children: [
                  SizedBox(
                    width: getProportionateScreenWidth(53),
                  ),
                  const Text('How many times?'),
                  const Spacer()
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(8),
              ),
              Material(
                borderRadius:
                    BorderRadius.circular(getProportionateScreenWidth(12)),
                elevation: 6,
                shadowColor: Get.theme.colorScheme.surface,
                child: Container(
                  // width: SizeConfig.screenWidth,
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(10)),
                  child: GetBuilder<DateSelectionController>(
                    init: DateSelectionController(),
                    initState: (_) {},
                    builder: (_) {
                      return DropdownButton(
                        borderRadius: BorderRadius.zero,
                        isExpanded: true,
                        value:
                            Get.find<DateSelectionController>().dropdownnumber,
                        items: Get.find<DateSelectionController>()
                            .itemnumbers
                            .map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          Get.find<DateSelectionController>()
                              .dropdownnumberchange(newValue);
                        },
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(24),
              ),
              MyButton(
                text: 'Continue',
                press: () {
                  Get.toNamed(PagesNames.chatscreen);
                },
              )
            ],
          ),
        ),
        //  ),
      ),
    );
  }
}
