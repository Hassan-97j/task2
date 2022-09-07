import 'package:get/get.dart';
import 'package:task2/fakedata/messages.dart';

class ChatsController extends GetxController {
  var isloading = false.obs;
  List mylist = <Messages>[].obs;
  fetch() async {
    isloading.value = false;
    await Future.delayed(const Duration(seconds: 2));
    mylist.assignAll(msglist);
    isloading.value = true;
    update();
  }

  @override
  void onInit() {
    fetch();
    super.onInit();
  }
}
