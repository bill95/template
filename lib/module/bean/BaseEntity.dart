import 'dart:convert';
class BaseEntity<T> {
  T data;
  int code;
  String errorMsg;

  BaseEntity({this.data, this.code, this.errorMsg});

  BaseEntity.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null&&json['data']!='null') {
      data = JsonConvert.fromJsonAsT<T>(json['data']);
    }
    code = json['errorCode'];
    errorMsg = json['errorMsg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data;
    }
    data['errorCode'] = this.code;
    data['errorMsg'] = this.errorMsg;
    return data;
  }
}