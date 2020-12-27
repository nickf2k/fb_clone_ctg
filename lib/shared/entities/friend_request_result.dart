class RequestedFriend {
  String code;
  String message;
  Data data;

  RequestedFriend({this.code, this.message, this.data});

  RequestedFriend.fromJson(Map<String, dynamic> json) {
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

  getListAddFriend() {}
}
class AcceptFriend {
  String code;
  String message;

  AcceptFriend({this.code, this.message});

  AcceptFriend.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['message'] = this.message;
    return data;
  }
}


class Data {
  List<Requested> requested;
  int total;

  Data({this.requested, this.total});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['requested'] != null) {
      requested = new List<Requested>();
      json['requested'].forEach((v) {
        requested.add(new Requested.fromJson(v));
      });
    }
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.requested != null) {
      data['requested'] = this.requested.map((v) => v.toJson()).toList();
    }
    data['total'] = this.total;
    return data;
  }
}

class Requested {
  int id;
  String username;
  String avatar;
  int sameFriends;
  String created;

  Requested(
      {this.id, this.username, this.avatar, this.sameFriends, this.created});

  Requested.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    avatar = json['avatar'];
    sameFriends = json['same_friends'];
    created = json['created'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['username'] = this.username;
    data['avatar'] = this.avatar;
    data['same_friends'] = this.sameFriends;
    data['created'] = this.created;
    return data;
  }
}
