import 'package:foodstore/app/data/models/store.dart';
import 'package:foodstore/app/data/provider/api.dart';

class HomeRepository {
  final Api _api;

  HomeRepository(this._api);

  Future<List<StoreModel>> getStores(int cityId) => _api.getStores(cityId);
}
