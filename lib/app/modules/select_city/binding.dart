import 'package:foodstore/app/data/provider/api.dart';
import 'package:foodstore/app/modules/select_city/controller.dart';
import 'package:foodstore/app/modules/select_city/repository.dart';
import 'package:get/get.dart';

class SelectCityBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SelectCityController>(
        () => SelectCityController(SelectCityRepository(Get.find<Api>())));
  }
}
