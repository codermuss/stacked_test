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
      test('Mock when method doesn\'t trigger', () async {
        final HomeViewModel viewModel = HomeViewModel();
        await viewModel.init('userName');
        print(viewModel.userModel?.name);
        expect('muss', viewModel.userModel?.name);
      });
    });
  });
}
