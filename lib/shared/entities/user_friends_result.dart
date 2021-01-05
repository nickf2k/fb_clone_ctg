class UserFriendResult {
  String code;
  String message;
  Data data;

  UserFriendResult({this.code, this.message, this.data});

  UserFriendResult.fromJson(Map<String, dynamic> json) {
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
  List<Friend> friends;
  int total;

  Data({this.friends, this.total});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['friends'] != null) {
      friends = new List<Friend>();
      json['friends'].forEach((v) {
        friends.add(new Friend.fromJson(v));
      });
    }
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.friends != null) {
      data['friends'] = this.friends.map((v) => v.toJson()).toList();
    }
    data['total'] = this.total;
    return data;
  }
}

class Friend {
  int id;
  String username;
  String avatar;
  int sameFriends;
  String created;

  Friend(
      {this.id, this.username, this.avatar, this.sameFriends, this.created});

  Friend.fromJson(Map<String, dynamic> json) {
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
