import 'package:foodstore/app/data/models/order.dart';
import 'package:foodstore/app/data/provider/api.dart';

class OrderRepository {
  final Api _api;

  OrderRepository(this._api);

  Future<OrderModel> getOrder(String id) => _api.getOrder(id);
}
