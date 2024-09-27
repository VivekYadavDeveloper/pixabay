import 'package:get/get.dart';

import '../Controller/controller.dart';

class HomeBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
          () => HomeController(),
    );
  }




}