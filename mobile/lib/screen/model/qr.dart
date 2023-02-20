// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:mobile/core/base/base_model.dart';

class Qr extends BaseModel<Qr> {
  String? data;
  Qr({
    this.data,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': data,
    };
  }

  @override
  String toString() => 'Qr(data: $data)';

  @override
  Qr fromJson(Map<String, dynamic> json) {
    return Qr(data: json['data']);
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['data'] = data;
    return data;
  }
}
