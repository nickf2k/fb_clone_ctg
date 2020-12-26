class FriendRequestResult {
  String code;
  String message;
  Data data;

  FriendRequestResult({this.code, this.message, this.data});

  FriendRequestResult.fromJson(Map<String, dynamic> json) {
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
  static List<FriendRequestResult> getListAddFriend() {
    return <FriendRequestResult>[
      FriendRequestResult(
        code: "1000",
        message: "OK",
        data: Data(
          requested: [
            1,
            "2",
            "Nguyen Thien Vuong",
            "2548",
            "15 ban chung",
            "30 phut"
          ],
          total: 1,
        ),
      ),
      FriendRequestResult(
        code: "1000",
        message: "OK",
        data: Data(
          requested: [
            1,
            "2",
            "Nguyen Khac Binh",
            "2548",
            "15 ban chung",
            "302 phut"
          ],
          total: 1,
        ),
      ),
    ];
  }

}

class Data {
  List requested;
  int total;

  Data({this.requested, this.total});

  Data.fromJson(Map<String, dynamic> json) {
    requested = json['requested'].cast<int>();
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['requested'] = this.requested;
    data['total'] = this.total;
    return data;
  }

}
