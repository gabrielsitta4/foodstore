import 'package:foodstore/app/data/models/user.dart';
import 'package:foodstore/app/data/models/user_profile_request.dart';
import 'package:foodstore/app/data/provider/api.dart';

class RegisterRepository {
  final Api _api;

  RegisterRepository(this._api);

  Future<UserModel> register(UserProfileRequestModel userProfileRequest) =>
      _api.register(userProfileRequest);
}
