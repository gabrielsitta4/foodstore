import 'package:foodstore/app/data/provider/api.dart';
import 'package:foodstore/app/modules/user_address_list/controller.dart';
import 'package:foodstore/app/modules/user_address_list/repository.dart';
import 'package:get/get.dart';

class UserAddressListBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserAddressListController>(() =>
        UserAddressListController(UserAddressListRepository(Get.find<Api>())));
  }
}
