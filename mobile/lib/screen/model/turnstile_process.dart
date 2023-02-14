// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:mobile/core/base/base_model.dart';

class TurnstileProcess extends BaseModel<TurnstileProcess> {
  bool? direction;
  String? time;

  TurnstileProcess({this.direction, this.time});

  @override
  TurnstileProcess fromJson(Map<String, dynamic> json) {
    return TurnstileProcess(direction: json['direction'], time: json['time']);
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['direction'] = direction;
    data['time'] = time;
    return data;
  }

  @override
  String toString() => 'TurnstileProcess(direction: $direction, time: $time)';
}
