import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task2/config/sizes.dart';

// ignore: must_be_immutable
class MyTextField extends StatelessWidget {
  MyTextField({
    Key? key,
    this.obscuretext,
    this.onsaved,
    this.onchanged,
    this.validation,
    required this.labeltext,
    required this.hinttext,
    this.svgname,
    this.inputtype,
    this.icons,
    this.readonly,
    this.textfieldctrlr,
  }) : super(key: key);

  bool? obscuretext;
  Function(String? value)? onsaved;
  Function(String? value)? onchanged;
  String? Function(String?)? validation;
  String labeltext;
  String hinttext;
  String? svgname;
  TextInputType? inputtype;
  IconData? icons;
  bool? readonly;
  TextEditingController? textfieldctrlr;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextFormField(
        controller: textfieldctrlr,
        readOnly: readonly ?? false,
        cursorColor: Get.theme.colorScheme.onSecondary.withOpacity(0.15),
        keyboardType: inputtype,
        style: TextStyle(
            color: Get.theme.colorScheme.secondary,
            fontSize: getProportionateScreenWidth(14)),
        obscureText: obscuretext ?? false,
        onSaved: onsaved,
        onChanged: onchanged,
        validator: validation,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(12),
              vertical: getProportionateScreenWidth(6)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              getProportionateScreenWidth(32),
            ),
            borderSide: BorderSide(color: Get.theme.colorScheme.onSecondary),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              getProportionateScreenWidth(32),
            ),
            borderSide: BorderSide(color: Get.theme.colorScheme.onSecondary),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              getProportionateScreenWidth(32),
            ),
            borderSide: BorderSide(color: Get.theme.colorScheme.onSecondary),
          ),
          //labelText: labeltext,
          hintText: hinttext,
          // floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Icon(icons),
        ),
      ),
    );
  }
}
