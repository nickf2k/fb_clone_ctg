class ChangeInfoResult {
  String code;
  String message;
  Data data;

  ChangeInfoResult({this.code, this.message, this.data});

  ChangeInfoResult.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}

class Data {
  int id;
  String username;
  String phonenumber;
  String created;
  String avatar;

  Data({this.id, this.username, this.phonenumber, this.created, this.avatar});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    phonenumber = json['phonenumber'];
    created = json['created'];
    avatar = json['avatar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['username'] = this.username;
    data['phonenumber'] = this.phonenumber;
    data['created'] = this.created;
    data['avatar'] = this.avatar;
    return data;
  }
}
