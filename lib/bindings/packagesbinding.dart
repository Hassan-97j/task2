import 'package:get/get.dart';
import 'package:task2/screens/packages/packagecontroller.dart';

class PackagesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PackageController>((() => PackageController()));
  }
}
