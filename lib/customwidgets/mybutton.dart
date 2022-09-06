import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task2/config/sizes.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    this.text,
    this.press,
  }) : super(key: key);
  final String? text;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(32),
      elevation: 6,
      shadowColor: Get.theme.colorScheme.surface,
      child: SizedBox(
        width: SizeConfig.screenWidth,
        height: getProportionateScreenHeight(52),
        child: ElevatedButton(
          onPressed: press,
          child: Center(
            child: Text(
              text!,
              style: GoogleFonts.varelaRound(
                fontSize: getProportionateScreenWidth(18),
                color: Get.theme.scaffoldBackgroundColor,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
