import 'package:mobile/core/network/network_manager.dart';
import 'package:mobile/screen/model/qr.dart';

import '../../core/network/model/response_model.dart';

class QrService {
  final NetworkManager networkManager;

  QrService(this.networkManager);

  Future<Qr?> getQr() async {
    ResponseModel<Qr> result = await networkManager.getData<Qr, Qr>(
        "http://localhost:3000/getQr", Qr(), null);
    return result.data;
  }
}
