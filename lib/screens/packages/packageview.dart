import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task2/config/sizes.dart';
import 'package:task2/customwidgets/packagebox.dart';
import 'package:task2/routes/pagesnames.dart';
import 'package:task2/screens/packages/packagecontroller.dart';

class PackagesView extends StatelessWidget {
  static String routeName = Pages.package;
  const PackagesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Packages'),
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
      body: Obx(() => Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(14)),
            child: Get.find<PackageController>().isloading.value == false
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.builder(
                    itemCount: Get.find<PackageController>().mylist.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: getProportionateScreenWidth(12)),
                        child: PackageBox(
                          asset:
                              Get.find<PackageController>().mylist[index].image,
                          description: Get.find<PackageController>()
                              .mylist[index]
                              .description,
                          price: Get.find<PackageController>()
                              .mylist[index]
                              .price
                              .toString(),
                        ),
                      );
                    },
                  ),
          )),
    );
  }
}
