import 'package:foodstore/app/data/provider/api.dart';
import 'package:foodstore/app/modules/checkout/controller.dart';
import 'package:foodstore/app/modules/checkout/repository.dart';
import 'package:get/get.dart';

class CheckoutBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CheckoutController>(
        () => CheckoutController(CheckoutRepository(Get.find<Api>())));
  }
}
