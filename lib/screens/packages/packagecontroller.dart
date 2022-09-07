import 'package:get/get.dart';
import 'package:task2/fakedata/packagesdata.dart';

class PackageController extends GetxController {
  List<PackageProduct> mylist = [];
  fetch() async {
    await Future.delayed(const Duration(seconds: 3));
    mylist.assignAll(pckprolist);
    update();
  }

  @override
  void onInit() {
    fetch();
    super.onInit();
  }
}
