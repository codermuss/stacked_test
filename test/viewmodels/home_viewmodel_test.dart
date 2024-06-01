import 'package:flutter_test/flutter_test.dart';
import 'package:stacked_test/app/app.locator.dart';
import 'package:stacked_test/ui/views/home/home_viewmodel.dart';

import '../helpers/test_helpers.dart';

void main() {
  HomeViewModel getModel() => HomeViewModel();

  group('HomeViewmodelTest -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
    group('User Test', () {
      test('Fetch user', () async {
        final HomeViewModel viewModel = getModel();
        await viewModel.init();
        expect(1, viewModel.userModel?.age);
      });

      test('Fetch user', () async {
        final HomeViewModel viewModel = HomeViewModel();
        await viewModel.init();
      });
    });
  });
}
