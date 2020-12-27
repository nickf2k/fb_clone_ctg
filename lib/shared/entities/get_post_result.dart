class GetPostResult {
  String code;
  String message;
  PostData data;
  List<String> image;
  List<String> video;
  Author author;

  GetPostResult(
      {this.code,
      this.message,
      this.data,
      this.image,
      this.video,
      this.author});

  GetPostResult.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    data = json['data'] != null ? new PostData.fromJson(json['data']) : null;
    image = json['image'].cast<String>();
    video = json['video'].cast<String>();
    author =
        json['author'] != null ? new Author.fromJson(json['author']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    data['image'] = this.image;
    data['video'] = this.video;
    if (this.author != null) {
      data['author'] = this.author.toJson();
    }
    return data;
  }
}

class PostData {
  int id;
  String described;
  String created;
  String modified;
  int like;

  PostData({this.id, this.described, this.created, this.modified, this.like});

  PostData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    described = json['described'];
    created = json['created'];
    modified = json['modified'];
    like = json['like'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['described'] = this.described;
    data['created'] = this.created;
    data['modified'] = this.modified;
    data['like'] = this.like;
    return data;
  }
}

class Author {
  int id;
  String name;
  String email;
  String phoneNumber;
  bool isBlocked;
  String avatar;
  String description;
  String address;
  String city;
  String country;
  String coverImage;
  String link;
  bool isOnline;
  String deviceId;
  String verifiedEmailAt;
  String timeRequestVerifyCode;
  String verifyCode;
  String uuid;
  String createdAt;
  String updatedAt;

  Author(
      {this.id,
      this.name,
      this.email,
      this.phoneNumber,
      this.isBlocked,
      this.avatar,
      this.description,
      this.address,
      this.city,
      this.country,
      this.coverImage,
      this.link,
      this.isOnline,
      this.deviceId,
      this.verifiedEmailAt,
      this.timeRequestVerifyCode,
      this.verifyCode,
      this.uuid,
      this.createdAt,
      this.updatedAt});

  Author.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    phoneNumber = json['phone_number'];
    isBlocked = json['is_blocked'];
    avatar = json['avatar'];
    description = json['description'];
    address = json['address'];
    city = json['city'];
    country = json['country'];
    coverImage = json['cover_image'];
    link = json['link'];
    isOnline = json['is_online'];
    deviceId = json['device_id'];
    verifiedEmailAt = json['verified_email_at'];
    timeRequestVerifyCode = json['time_request_verify_code'];
    verifyCode = json['verify_code'];
    uuid = json['uuid'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['phone_number'] = this.phoneNumber;
    data['is_blocked'] = this.isBlocked;
    data['avatar'] = this.avatar;
    data['description'] = this.description;
    data['address'] = this.address;
    data['city'] = this.city;
    data['country'] = this.country;
    data['cover_image'] = this.coverImage;
    data['link'] = this.link;
    data['is_online'] = this.isOnline;
    data['device_id'] = this.deviceId;
    data['verified_email_at'] = this.verifiedEmailAt;
    data['time_request_verify_code'] = this.timeRequestVerifyCode;
    data['verify_code'] = this.verifyCode;
    data['uuid'] = this.uuid;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
