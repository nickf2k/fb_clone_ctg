class UserResult {
  String code;
  String message;
  User user;

  UserResult({this.code, this.message, this.user});

  UserResult.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    user = json['data'] != null ? new User.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['message'] = this.message;
    if (this.user != null) {
      data['data'] = this.user.toJson();
    }
    return data;
  }
}

class User {
  int id;
  String username;
  String created;
  String avatar;
  String coverImage;
  String address;
  String city;
  String country;
  int listing;
  int isFriend;
  bool online;

  User(
      {this.id,
      this.username,
      this.created,
      this.avatar,
      this.coverImage,
      this.address,
      this.city,
      this.country,
      this.listing,
      this.isFriend,
      this.online});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    created = json['created'];
    avatar = json['avatar'];
    coverImage = json['cover_image'];
    address = json['address'];
    city = json['city'];
    country = json['country'];
    listing = json['listing'];
    isFriend = json['is_friend'];
    online = json['online'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['username'] = this.username;
    data['created'] = this.created;
    data['avatar'] = this.avatar;
    data['cover_image'] = this.coverImage;
    data['address'] = this.address;
    data['city'] = this.city;
    data['country'] = this.country;
    data['listing'] = this.listing;
    data['is_friend'] = this.isFriend;
    data['online'] = this.online;
    return data;
  }

  static User getDefault() {
    return User(
        id: 1000,
        address: "Default address",
        avatar: "https://picsum.photos/226",
        city: "Ha noi",
        country: "Viet Nam",
        coverImage: "https://picsum.photos/226",
        created: "1607767422",
        isFriend: 0,
        online: false,
        listing: 0,
        username: "Tên Mặc Định");
  }
}
