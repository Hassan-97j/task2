import 'package:get/get.dart';
import 'package:task2/fakedata/packagesdata.dart';

class PackageController extends GetxController {

  var isloading = false.obs;
  List<PackageProduct> mylist = [];
  
  fetch() async {
    isloading.value = false;
    await Future.delayed(const Duration(seconds: 3));
    mylist.assignAll(pckprolist);
    isloading.value = true;
    update();
  }

  @override
  void onInit() {
    fetch();
    super.onInit();
  }
}
