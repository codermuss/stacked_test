import 'package:flutter_test/flutter_test.dart';
import 'package:stacked_test/app/app.locator.dart';
import 'package:stacked_test/models/user_model.dart';

import '../helpers/test_helpers.dart';
import '../helpers/test_helpers.mocks.dart';

void main() {
  group('UserApiServiceTest -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
    group('User test', () {
      test('Fetch User', () async {
        final MockUserApiService mockUserApiService =
            getAndRegisterUserApiService();
        UserModel? user = await mockUserApiService.fetchUser('userName');
        expect(1, user?.age);
      });
    });
  });
}
