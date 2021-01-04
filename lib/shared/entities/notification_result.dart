class NotificationResult {
  String code;
  String message;
  List<MyNotification> data;
  String lastUpdate;

  NotificationResult({this.code, this.message, this.data, this.lastUpdate});

  NotificationResult.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    if (json['data'] != null) {
      data = new List<MyNotification>();
      json['data'].forEach((v) {
        data.add(new MyNotification.fromJson(v));
      });
    }
    lastUpdate = json['last_update'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    data['last_update'] = this.lastUpdate;
    return data;
  }
}

class MyNotification {
  int id;
  String description;
  bool isRead;
  String createdAt;
  String avatar;

  MyNotification(
      {this.id, this.description, this.isRead, this.createdAt, this.avatar});

  MyNotification.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    description = json['description'];
    isRead = json['is_read'];
    createdAt = json['created_at'];
    avatar = json['avatar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['description'] = this.description;
    data['is_read'] = this.isRead;
    data['created_at'] = this.createdAt;
    data['avatar'] = this.avatar;
    return data;
  }
}
