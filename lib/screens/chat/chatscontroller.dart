import 'package:get/get.dart';
import 'package:task2/fakedata/messages.dart';

class ChatsController extends GetxController {
  List<Messages> mylist = [];
  fetch() async {
    await Future.delayed(const Duration(seconds: 3));
    mylist.assignAll(msglist);
    update();
  }

  @override
  void onInit() {
    fetch();
    super.onInit();
  }
}
