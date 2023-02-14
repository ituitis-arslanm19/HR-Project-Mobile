// ignore_for_file: public_member_api_docs, sort_constructors_first
class ResponseModel<T> {
  T? data;
  String? errorCode;
  
  ResponseModel({
    this.data,
    this.errorCode,
  });
}
