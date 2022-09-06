import 'package:get/get.dart';
import 'package:task2/screens/dateselection/dateselectioncontroller.dart';

class DateSelectionBindingBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DateSelectionController>((() => DateSelectionController()));
  }
}
