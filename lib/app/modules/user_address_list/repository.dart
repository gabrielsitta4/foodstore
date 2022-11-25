import 'package:foodstore/app/data/models/address.dart';
import 'package:foodstore/app/data/provider/api.dart';

class UserAddressListRepository {
  final Api _api;

  UserAddressListRepository(this._api);

  Future<List<AddressModel>> getUserAddresses() => _api.getUserAddresses();

  Future<void> deleteAddress(int id) => _api.deleteAddress(id);
}
