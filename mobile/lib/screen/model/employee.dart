// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'package:mobile/core/base/base_model.dart';
import 'package:mobile/core/network/network_manager.dart';




class Employee extends BaseModel<Employee> {
  String? fname;
  String? lname;
  String? email;
  String? phoneNumber;
  String? department;
  String? profilePic;

  Employee(
      {this.fname,
      this.lname,
      this.email,
      this.phoneNumber,
      this.department,
      this.profilePic});

  Employee.fromJson(Map<String, dynamic> json) {
    fname = json['fname'];
    lname = json['lname'];
    email = json['email'];
    phoneNumber = json['phoneNumber'];
    department = json['department'];
    profilePic = json['profilePic'];
    NetworkManager networkManager = NetworkManager();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fname'] = fname;
    data['lname'] = lname;
    data['email'] = email;
    data['phoneNumber'] = phoneNumber;
    data['department'] = department;
    data['profilePic'] = profilePic;
    return data;
  }

  @override
  Employee fromJson(Map<String, dynamic> json) {
    return Employee(
        fname: json['fname'],
        lname: json['lname'],
        email: json['email'],
        phoneNumber: json['phoneNumber'],
        department: json['department'],
        profilePic: json['profilePic']);
  }

  @override
  String toString() {
    return 'Employee(fname: $fname, lname: $lname, email: $email, phoneNumber: $phoneNumber, department: $department, profilePic: $profilePic)';
  }
}
