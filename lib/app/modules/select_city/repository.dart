import 'package:foodstore/app/data/models/city.dart';
import 'package:foodstore/app/data/provider/api.dart';

class SelectCityRepository {
  final Api _api;

  SelectCityRepository(this._api);

  Future<List<CityModel>> getCities() => _api.getCities();
}
