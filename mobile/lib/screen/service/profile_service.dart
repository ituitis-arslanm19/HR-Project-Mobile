// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:mobile/core/network/model/response_model.dart';
import 'package:mobile/core/network/network_manager.dart';

import '../model/employee.dart';

class ProfileService {
  NetworkManager networkManager;
  ProfileService({
    required this.networkManager,
  });

  Future<Employee?> saveEmployee() async {
    ResponseModel<Employee> result =
        await networkManager.getData<Employee, Employee>(
            "http://localhost:3000/employee", Employee(), null);
    return result.data;
  }

  Future<List<Employee>?> getEmployees() async {
    ResponseModel<List<Employee>> result =
        await networkManager.getData<List<Employee>, Employee>(
            "http://localhost:3000/employees", Employee(), null);
    return result.data;
  }
}
