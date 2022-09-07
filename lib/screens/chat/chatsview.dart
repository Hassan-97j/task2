import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task2/config/sizes.dart';
import 'package:task2/customwidgets/customtextfield.dart';
import 'package:task2/painter/appbarpainter.dart';
import 'package:task2/routes/pagesnames.dart';
import 'package:task2/screens/chat/chatscontroller.dart';

class ChatsView extends StatelessWidget {
  static String routeName = Pages.chat;
  const ChatsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        CustomPaint(
          painter: AppBarPainter(),
          size: const Size(400, 195),
          child: Container(
            height: getProportionateScreenHeight(195),
            width: getProportionateScreenWidth(400),
            margin:
                EdgeInsets.symmetric(vertical: getProportionateScreenWidth(22)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: getProportionateScreenWidth(18),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: (() {}),
                      icon: const Icon(Icons.chevron_left),
                    ),
                    IconButton(
                      onPressed: (() {}),
                      icon: const Icon(Icons.menu),
                    )
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenWidth(18),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: getProportionateScreenWidth(22)),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: CircleAvatar(
                          backgroundColor: Get.theme.colorScheme.background,
                          child: Icon(
                            Icons.message,
                            color: Get.theme.colorScheme.primary,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Hi there',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: getProportionateScreenWidth(18),
                            color: Get.theme.colorScheme.background,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: getProportionateScreenHeight(32),
        ),
        Expanded(
          // flex: 3,
          child: Obx(
            () => Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(22)),
              child: Get.find<ChatsController>().isloading.value == false
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : ListView.builder(
                      itemCount: Get.find<ChatsController>().mylist.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: getProportionateScreenWidth(12)),
                            child: Align(
                              alignment: Get.find<ChatsController>()
                                          .mylist[index]
                                          .sentbyme ==
                                      true
                                  ? Alignment.centerLeft
                                  : Alignment.centerRight,
                              child: Material(
                                borderRadius: BorderRadius.circular(
                                    getProportionateScreenWidth(12)),
                                elevation: 6,
                                shadowColor: Get.theme.colorScheme.surface,
                                child: Container(
                                  width: SizeConfig.screenWidth * 0.45,
                                  height: getProportionateScreenHeight(40),
                                  decoration: BoxDecoration(
                                    color: Get.find<ChatsController>()
                                                .mylist[index]
                                                .sentbyme ==
                                            true
                                        ? Get.theme.colorScheme.onPrimary
                                        : Get.theme.colorScheme.background,
                                    borderRadius: BorderRadius.circular(
                                        getProportionateScreenWidth(12)),
                                    border: Border.all(
                                      color: Get.find<ChatsController>()
                                                  .mylist[index]
                                                  .sentbyme ==
                                              true
                                          ? Get.theme.colorScheme.onPrimary
                                          : Get.theme.colorScheme.background,
                                      width: 2,
                                    ),
                                  ),
                                  child: FittedBox(
                                    fit: BoxFit.contain,
                                    child: Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Text(Get.find<ChatsController>()
                                          .mylist[index]
                                          .text),
                                    ),
                                  ),
                                ),
                              ),
                            ));
                      },
                    ),
            ),
          ),
        ),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(22)),
          child: Row(
            children: [
              Expanded(
                  flex: 2,
                  child: MyTextField(
                    labeltext: 'type here',
                    hinttext: 'type here',
                  )),
              SizedBox(
                width: getProportionateScreenWidth(18),
              ),
              const Icon(Icons.camera),
              const Icon(Icons.attach_file),
              IconButton(
                icon: const Icon(Icons.send),
                onPressed: () {
                  Get.toNamed(PagesNames.packagescreen);
                },
              )
            ],
          ),
        ),
        SizedBox(
          height: getProportionateScreenHeight(32),
        ),
      ],
    ));
  }
}
