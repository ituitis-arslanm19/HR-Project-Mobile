// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:mobile/core/network/model/response_model.dart';
import 'package:mobile/core/network/network_manager.dart';

import '../model/turnstile_process.dart';

class TurnstileService {
  NetworkManager networkManager;
  TurnstileService({
    required this.networkManager,
  });

  Future<TurnstileProcess?> saveTurnstileProcess() async {
    ResponseModel<TurnstileProcess> result =
        await networkManager.getData<TurnstileProcess, TurnstileProcess>(
            "http://localhost:3000/turnstileProcess", TurnstileProcess(), null);
    print(result.data.toString());
    return result.data;
  }

  Future<List<TurnstileProcess>?> getTurnstileProcesss() async {
    ResponseModel<List<TurnstileProcess>> result =
        await networkManager.getData<List<TurnstileProcess>, TurnstileProcess>(
            "http://localhost:3000/turnstileProcesses",
            TurnstileProcess(),
            null);
    print(result.data.toString());
    return result.data;
  }
}
