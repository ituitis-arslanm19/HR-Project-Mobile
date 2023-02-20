// ignore_for_file: library_private_types_in_public_api

import 'package:mobile/core/base/base_view_model.dart';
import 'package:mobile/core/constant/enum/enums.dart';
import 'package:mobx/mobx.dart';
part 'main_view_model.g.dart';

class MainViewModel = _MainViewModelBase with _$MainViewModel;

abstract class _MainViewModelBase extends BaseViewModel with Store {
  @observable
  bool isLoading = true;

  @observable
  int bnbIndex = 0;

  @override
  @action
  init() {
    isLoading = !isLoading;
  }

  @action
  setBnbIndex(int index) {
    bnbIndex = index;
  }
}
