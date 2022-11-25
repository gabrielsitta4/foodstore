import 'package:foodstore/app/data/models/city.dart';
import 'package:foodstore/app/data/models/user.dart';
import 'package:foodstore/app/data/models/user_login_request.dart';
import 'package:foodstore/app/data/models/user_profile_request.dart';
import 'package:foodstore/app/data/services/auth/service.dart';
import 'package:foodstore/app/modules/register/repository.dart';
import 'package:foodstore/app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  final RegisterRepository _repository;

  RegisterController(this._repository);

  final formKey = GlobalKey<FormState>();
  final _authService = Get.find<AuthService>();
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  var passwordController = TextEditingController();

  void submit() {
    Get.focusScope!.unfocus();

    if (!formKey.currentState!.validate()) {
      return;
    }

    var userProfileRequest = UserProfileRequestModel(
      name: nameController.text,
      email: emailController.text,
      phone: phoneController.text,
      password: passwordController.text,
    );

    _repository.register(userProfileRequest).then((value) async {
      await _authService.login(UserLoginRequestModel(
        email: emailController.text,
        password: passwordController.text,
      ));

      ScaffoldMessenger.of(Get.overlayContext!).showSnackBar(
          const SnackBar(content: Text('Cadastro feito com sucesso')));

      Get.offAllNamed(Routes.dashboard);
    }, onError: (error) {
      Get.dialog(AlertDialog(title: Text(error.toString())));
    });
  }
}
