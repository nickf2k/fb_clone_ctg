class SavedSearchList {
  String code;
  String message;
  Data data;

  SavedSearchList({this.code, this.message, this.data});

  SavedSearchList.fromJson(Map<String, dynamic> json) {
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
  String keyword;
  String created;

  Data({this.id, this.keyword, this.created});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    keyword = json['keyword'];
    created = json['created'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['keyword'] = this.keyword;
    data['created'] = this.created;
    return data;
  }
}
