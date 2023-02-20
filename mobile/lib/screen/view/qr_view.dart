import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobile/core/base/base_view.dart';
import 'package:mobile/core/constant/enum/enums.dart';
import 'package:mobile/core/util/size_config.dart';
import 'package:mobile/screen/service/qr_service.dart';
import 'package:mobile/screen/viewModel/qr_view_model.dart';

import '../../core/network/network_manager.dart';

class QrView extends StatelessWidget {
  QrView({super.key});

  QrViewModel qrViewModel = QrViewModel(QrService(NetworkManager()));

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Column(
      children: [
        Observer(builder: (context) {
          switch (qrViewModel.dataState) {
            case DataState.LOADING:
              return const Center(child: CircularProgressIndicator());

            case DataState.READY:

            case DataState.ERROR:
              return const Text("Beklenmeyen bir hata meydana geldi.");

            default:
              return const CircularProgressIndicator();
          }
        }),
      ],
    );
  }
}
