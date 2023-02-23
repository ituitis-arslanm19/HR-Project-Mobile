// ignore_for_file: library_private_types_in_public_api

import 'dart:async';

import 'package:mobile/core/base/base_view_model.dart';
import 'package:mobile/screen/service/qr_service.dart';
import 'package:mobx/mobx.dart';

import '../../core/constant/enum/enums.dart';
import '../model/qr.dart';
part 'qr_view_model.g.dart';

class QrViewModel = _QrViewModelBase with _$QrViewModel;

abstract class _QrViewModelBase extends BaseViewModel with Store {
  final QrService qrService;

  @observable
  DataState dataState = DataState.LOADING;
  @observable
  Qr? result;
  @observable
  int countDown = 30;

  Timer? countdownTimer;

  _QrViewModelBase(this.qrService);

  @override
  @action
  Future<void> init() async {
    countDown = 30;
    Qr? qr = await qrService.getQr();

    if (qr == null || qr.data == null) {
      dataState = DataState.ERROR;
    } else {
      result = qr;
      countdownTimer =
          Timer.periodic(Duration(seconds: 1), (_) => setCountDown());
      dataState = DataState.READY;
    }
  }

  @action
  void setCountDown() {
    countDown -= 1;
    if (countDown <= 0) {
      repeatProcess();
    }
  }

  @action
  void repeatProcess() {
    countdownTimer!.cancel();
    dataState = DataState.LOADING;
    init();
  }
}
