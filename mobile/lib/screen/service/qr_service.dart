import 'package:mobile/core/network/network_manager.dart';
import 'package:mobile/screen/model/qr.dart';

import '../../core/network/model/response_model.dart';

class QrService {
  final NetworkManager networkManager;

  QrService(this.networkManager);

  Future<Qr?> getQr() async {
    ResponseModel<Qr> result = await networkManager.getData<Qr, Qr>(
        "http://localhost:8080/access",
        Qr(),
        "Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ0ZXN0NEB0ZXN0LmNvbSIsImF1dGhvcml0aWVzIjpbXSwicHJpbmNpcGFsIjp7ImlkIjoxLCJlbWFpbCI6InRlc3Q0QHRlc3QuY29tIiwicm9sZXMiOlsiVVNFUiJdLCJzZWNyZXQiOiI1U1FVVklOTUJQRTRBRVBTQ0tVWklOQVJINVJKUUI3TiIsImVuYWJsZWQiOnRydWUsInBhc3N3b3JkIjpudWxsLCJhdXRob3JpdGllcyI6bnVsbCwidXNlcm5hbWUiOiJ0ZXN0NEB0ZXN0LmNvbSIsImFjY291bnROb25FeHBpcmVkIjpmYWxzZSwiYWNjb3VudE5vbkxvY2tlZCI6ZmFsc2UsImNyZWRlbnRpYWxzTm9uRXhwaXJlZCI6ZmFsc2V9LCJpYXQiOjE2Nzc0MjAxMjksImlzcyI6ImNvbS5hYmMiLCJleHAiOjE2ODUyMDY5Mjl9.6ZqGIZ4WxFpz9atF3YgCnwso5S4hLuZQpEiH90z-wYM");
    return result.data;
  }
}
