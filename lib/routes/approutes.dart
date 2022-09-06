import 'package:get/get.dart';
import 'package:task2/bindings/dateselectionbinding.dart';

import 'package:task2/routes/pagesnames.dart';
import 'package:task2/screens/dateselection/dateselectionview.dart';

appRoutes() => [
      GetPage(
        name: PagesNames.dateselectionscreen,
        page: () => const DateSelectionView(),
        binding: DateSelectionBindingBinding(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),

      // GetPage(
      //   name: PagesNames.signinscreen,
      //   page: () => SignInView(),
      //   middlewares: [MyMiddelware()],
      //   transition: Transition.leftToRightWithFade,
      //   transitionDuration: const Duration(milliseconds: 500),
      // ),

      // GetPage(
      //   name: PagesNames.homescreen,
      //   page: () => const HomeView(),
      //   middlewares: [MyMiddelware()],
      //   transition: Transition.leftToRightWithFade,
      //   transitionDuration: const Duration(
      //     milliseconds: 500,
      //   ),
      // ),
    ];

class MyMiddelware extends GetMiddleware {
  @override
  GetPage? onPageCalled(GetPage? page) {
    // ignore: avoid_print
    print(page?.name);
    return super.onPageCalled(page);
  }
}
