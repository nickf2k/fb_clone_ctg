class NotifyObject {
  String code;
  String message;
  List<String> data;
  String lastUpdate;
  String badge;

  NotifyObject(
      {this.code, this.message, this.data, this.lastUpdate, this.badge});

  NotifyObject.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    data = json['data'].cast<String>();
    lastUpdate = json['last_update'];
    badge = json['badge'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['message'] = this.message;
    data['data'] = this.data;
    data['last_update'] = this.lastUpdate;
    data['badge'] = this.badge;
    return data;
  }
  static List<NotifyObject> getListNotification(){
    return <NotifyObject>[
      NotifyObject(
        code: "123",
        message: "1234",
        data: ["12345","65478","Sáng nay Sơn Tùng - MTP vừa đăng một bức ảnh úp mở về một số điện thoại với dòng caption “Gọi anh”.","34422","4 phút trước","422","7482","62532"],
        lastUpdate: "1234",
        badge: "12347"

      ),
      NotifyObject(
          code: "1234",
          message: "12344",
          data: ["12345","65478","Sáng nay Sơn Tùng - MTP vừa đăng một bức ảnh úp mở về một số điện thoại với dòng caption “Gọi anh”.","34422","4 phút trước","422","7482","62532"],
          lastUpdate: "12344",
          badge: "123474"
      ),
      NotifyObject(
          code: "1235",
          message: "12345",
          data: ["12345","65478","344232","34422","4 phút trước","422","7482","62532"],
          lastUpdate: "12345",
          badge: "123475"
      ),
      NotifyObject(
          code: "1236",
          message: "12346",
          data: ["12345","65478","344232","34422","4 phút trước","422","7482","62532"],
          lastUpdate: "12346",
          badge: "123476"
      ),
      NotifyObject(
          code: "12361",
          message: "123461",
          data: ["12345","65478","344232","34422","4 phút trước","422","7482","62532"],
          lastUpdate: "123461",
          badge: "1234761"
      ),
      NotifyObject(
          code: "12362",
          message: "123462",
          data: ["12345","65478","344232","34422","4 phút trước","422","7482","62532"],
          lastUpdate: "123462",
          badge: "1234762"
      ),
      NotifyObject(
          code: "12363",
          message: "123463",
          data: ["12345","65478","344232","34422","4 phút trước","422","7482","62532"],
          lastUpdate: "123463",
          badge: "1234763"
      ),

    ];
}
}
