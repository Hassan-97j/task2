import 'package:get/get.dart';

import '../screens/chat/chatscontroller.dart';

class ChatsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChatsController>((() => ChatsController()));
  }
}
