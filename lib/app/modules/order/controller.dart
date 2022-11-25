import 'package:foodstore/app/data/models/order.dart';
import 'package:foodstore/app/modules/order/repository.dart';
import 'package:get/get.dart';

class OrderController extends GetxController with StateMixin<OrderModel> {
  final OrderRepository _repository;
  OrderController(this._repository);

  @override
  void onInit() {
    String id = Get.parameters['id']!;

    _repository.getOrder(id).then((data) {
      change(data, status: RxStatus.success());
    }, onError: (error) {
      change(null, status: RxStatus.error(error.toString()));
    });

    super.onInit();
  }
}
