import 'package:stacked/stacked.dart';
import 'package:stacked_test/app/app.locator.dart';
import 'package:stacked_test/services/user_api_service.dart';

import '../../../models/user_model.dart';

class HomeViewModel extends BaseViewModel {
  ///* Api Service

  final UserApiService _userApiService = locator<UserApiService>();

  //* Prop
  UserModel? _userModel;

  UserModel? get userModel => _userModel;

  Future<void> init(String someData) async {
    _userModel = await _userApiService.fetchUser(someData);
    print('init:: ${_userModel?.name}');
  }
}
