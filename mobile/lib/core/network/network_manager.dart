import 'dart:convert';

import 'package:http/http.dart';
import 'package:mobile/core/base/base_model.dart';
import 'package:http/http.dart' as http;
import 'package:mobile/core/network/model/response_model.dart';

class NetworkManager {
  Future<ResponseModel<R>>? postData<R, T>(
      String url, BaseModel<T> baseModel, String? data, String? token) async {
    Response res;

    try {
      res =
          await http.post(Uri.parse(url), body: data, headers: <String, String>{
        'Authorization': token ?? "",
      });
      return handleResponse(res, baseModel);
    } catch (e) {
      print(e);
    }
    return ResponseModel<R>();
  }

  Future<ResponseModel<R>> getData<R, T>(
      String url, BaseModel<T> baseModel, String? token) async {
    Response res;
    try {
      res = await http.get(Uri.parse(url), headers: <String, String>{
        'Authorization': token ?? "",
      });
      return handleResponse(res, baseModel);
    } catch (e) {
      print(e);
    }

    return ResponseModel<R>();
  }

  ResponseModel<R> handleResponse<R, T>(Response res, BaseModel<T> baseModel) {
    ResponseModel<R> result = ResponseModel();
    switch (res.statusCode) {
      case 200:
        if (jsonDecode(res.body)["list"] != null) {
          final resultList = jsonDecode(res.body)["list"] as List;

          result.data =
              resultList.map((json) => baseModel.fromJson(json)).toList() as R;
        } else {
          result.data = baseModel.fromJson(jsonDecode(res.body)) as R;
        }
        break;
      default:
        result.errorCode = res.statusCode.toString();
    }
    return result;
  }
}
