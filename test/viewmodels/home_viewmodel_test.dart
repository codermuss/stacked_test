import 'package:flutter_test/flutter_test.dart';
import 'package:stacked_test/app/app.locator.dart';
import 'package:stacked_test/services/user_api_service.dart';
import 'package:stacked_test/ui/views/home/home_viewmodel.dart';

import '../helpers/test_helpers.dart';

void main() {
  HomeViewModel getModel() => HomeViewModel();

  group('HomeViewmodelTest -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
    group('User Test', () {
      test('Mock when method trigger', () async {
        final HomeViewModel viewModel = getModel();
        //* If I don't pass any data to init mock user api service handle the call on viewModel
        await viewModel.init();
        expect(1, viewModel.userModel?.age);
      });

      test('Mock when method doesn\'t trigger', () async {
        final HomeViewModel viewModel = HomeViewModel();

        ///* I want to set userName to my mock user api service to handle call.
        final UserApiService userApiService =
            getAndRegisterUserApiService(userName: 'user');
        await viewModel.init(someData: 'user');
      });
    });
  });
}
