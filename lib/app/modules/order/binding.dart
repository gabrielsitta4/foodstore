import 'package:foodstore/app/data/provider/api.dart';
import 'package:foodstore/app/modules/order/controller.dart';
import 'package:foodstore/app/modules/order/repository.dart';
import 'package:get/get.dart';

class OrderBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OrderController>(
        () => OrderController(OrderRepository(Get.find<Api>())));
  }
}
