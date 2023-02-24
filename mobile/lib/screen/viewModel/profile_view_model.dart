import 'package:mobile/core/base/base_view_model.dart';
import 'package:mobile/core/constant/enum/enums.dart';
import 'package:mobile/screen/model/employee.dart';
import 'package:mobile/screen/service/profile_service.dart';
import 'package:mobx/mobx.dart';
part 'profile_view_model.g.dart';

class ProfileViewModel = _ProfileViewModelBase with _$ProfileViewModel;

abstract class _ProfileViewModelBase extends BaseViewModel with Store {
  final ProfileService profileService;

  @observable
  Employee? result;

  @observable
  DataState dataState = DataState.LOADING;

  @action
  @override
  Future<void> init() async {
    result = await profileService.getEmployee("Mehmet");
    if (result == null || result!.fname == null) {
      dataState = DataState.ERROR;
    } else {
      dataState = DataState.READY;
      print(result!.fname);
    }
  }

  _ProfileViewModelBase(this.profileService);
}
