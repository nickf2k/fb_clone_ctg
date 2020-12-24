class NotificationResult1 {
  String code;
  String message;
  List<String> data;
  String lastUpdate;
  String badge;

  NotificationResult1(
      {this.code, this.message, this.data, this.lastUpdate, this.badge});

  NotificationResult1.fromJson(Map<String, dynamic> json) {
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

  static List<NotificationResult1> getListNotification() {
    return <NotificationResult1>[
      NotificationResult1(
          code: "123",
          message: "1234",
          data: [
            "12345",
            "65478",
            "Phạm Thị Thu Hường đã thêm bạn vào danh sách bí mật :v ",
            "34422",
            "4 phút trước",
            "https://scontent.fhan2-5.fna.fbcdn.net/v/t1.0-9/126055585_823507711549985_4557439094041117219_o.jpg?_nc_cat=107&ccb=2&_nc_sid=09cbfe&_nc_ohc=x05NY_SQ9TUAX8w7_Hh&_nc_ht=scontent.fhan2-5.fna&oh=c276a1edba2bbe3ea7296adc0b254ab3&oe=60089928",
            "0",
            "1"
          ],
          lastUpdate: "1234",
          badge: "12347"),
      NotificationResult1(
          code: "123",
          message: "1234",
          data: [
            "12345",
            "65478",
            "Cẩm Tú, Hà Mai và những người khác đã thêm vào tin của họ ",
            "34422",
            "6 phút trước",
            "https://halotravel.vn/wp-content/uploads/2020/07/thach_trangg_104023517_273302180392030_1622714314692187871_n.jpg",
            "0",
            "1"
          ],
          lastUpdate: "1234",
          badge: "12347"),
      NotificationResult1(
          code: "123",
          message: "1234",
          data: [
            "12345",
            "65478",
            "Nhàn Bùi đã yêu cầu tham gia Tuyển dụng lập trình Android ",
            "34422",
            "7 phút trước",
            "https://halotravel.vn/wp-content/uploads/2020/07/thach_trangg_106496800_296009351775507_621253661713155444_n.jpg",
            "1",
            "0"
          ],
          lastUpdate: "1234",
          badge: "12347"),
      NotificationResult1(
          code: "123",
          message: "1234",
          data: [
            "12345",
            "65478",
            "Sáng nay Sơn Tùng - MTP vừa đăng một bức ảnh úp mở về một số điện thoại với dòng caption “Gọi anh” ",
            "34422",
            "9 phút trước",
            "https://halotravel.vn/wp-content/uploads/2020/07/thaophuong____94433910_1039687686425915_3144343660364629390_n.jpg",
            "0",
            "1"
          ],
          lastUpdate: "1234",
          badge: "12347"),
      // NotificationResult(
      //     code: "123",
      //     message: "1234",
      //     data: [
      //       "12345",
      //       "65478",
      //       "BeatVn đã thêm ảnh mới: < MV của Sơn Tùng cán mốc 25 triệu lượt xem > ",
      //       "34422",
      //       "10 phút trước",
      //       "https://znews-photo.zadn.vn/w1920/Uploaded/qhj_yvobvhfwbv/2018_07_18/Nguyen_Huy_Binh1.jpg",
      //       "0",
      //       "1"
      //     ],
      //     lastUpdate: "1234",
      //     badge: "12347"),
      NotificationResult1(
          code: "123",
          message: "1234",
          data: [
            "12345",
            "65478",
            "Hôm nay sinh nhật của Nhat Nguyen và 3 người khác. Hãy gửi cho họ những lời chúc tốt đẹp!",
            "34422",
            "20 phút trước",
            "https://halotravel.vn/wp-content/uploads/2020/07/thach_trangg_103512340_187758299273938_8335419467587726993_n.jpg",
            "0",
            "1"
          ],
          lastUpdate: "1234",
          badge: "12347"),
      NotificationResult1(
          code: "123",
          message: "1234",
          data: [
            "12345",
            "65478",
            "Bạn của bạn là Nguyễn Thiên Vương đã đăng trong Flutter ctg",
            "34422",
            "25 phút trước",
            "https://halotravel.vn/wp-content/uploads/2020/07/thach_trangg_102355502_583195935914042_3829856181214573381_n.jpg",
            "0",
            "1"
          ],
          lastUpdate: "1234",
          badge: "12347"),
      NotificationResult1(
          code: "123",
          message: "1234",
          data: [
            "12345",
            "65478",
            "Vương Xuân Hiệu đã đăng trong Đội svtn SPKT ",
            "34422",
            "40 phút trước",
            "https://halotravel.vn/wp-content/uploads/2020/07/bynellie_72634509_417666912141104_1825135038410813666_n.jpg",
            "0",
            "1"
          ],
          lastUpdate: "1234",
          badge: "12347"),
      NotificationResult1(
          code: "123",
          message: "1234",
          data: [
            "12345",
            "65478",
            "Bạn có bài viết mới để xem trong IT JOB ",
            "34422",
            "49 phút trước",
            "https://halotravel.vn/wp-content/uploads/2020/07/thach_trangg_107299526_199710931442223_1945990139176505084_n.jpg",
            "0",
            "1"
          ],
          lastUpdate: "1234",
          badge: "12347"),
      NotificationResult1(
          code: "1234",
          message: "12344",
          data: [
            "12345",
            "65478",
            "Sáng nay Sơn Tùng - MTP vừa đăng một bức ảnh ",
            "34422",
            "4 phút trước",
            "https://halotravel.vn/wp-content/uploads/2020/07/thach_trangg_101029297_573874646879779_1794923475739360981_n.jpg",
            "1",
            "0"
          ],
          lastUpdate: "12344",
          badge: "123474"),
      NotificationResult1(
          code: "1235",
          message: "12345",
          data: [
            "12345",
            "65478",
            "Sáng nay Sơn Tùng - MTP vừa đăng một bức ảnh ",
            "34422",
            "4 phút trước",
            "https://halotravel.vn/wp-content/uploads/2020/12/stylenanda_korea_75265136_2852347961444328_1544885866040715468_n-1.jpg",
            "7482",
            "62532"
          ],
          lastUpdate: "12345",
          badge: "123475"),
      NotificationResult1(
          code: "1236",
          message: "12346",
          data: [
            "12345",
            "65478",
            "Sáng nay Sơn Tùng - MTP vừa đăng một bức ảnh ",
            "34422",
            "4 phút trước",
            "https://halotravel.vn/wp-content/uploads/2020/12/stylenanda_korea-phoi-do-di-choi-noel.jpg",
            "7482",
            "62532"
          ],
          lastUpdate: "12346",
          badge: "123476"),
      NotificationResult1(
          code: "12361",
          message: "123461",
          data: [
            "12345",
            "65478",
            "Sáng nay Sơn Tùng - MTP vừa đăng một bức ảnh ",
            "34422",
            "4 phút trước",
            "https://halotravel.vn/wp-content/uploads/2020/12/jye._.e_123934972_374525470654524_7024276084942393954_n-1.jpg",
            "7482",
            "62532"
          ],
          lastUpdate: "123461",
          badge: "1234761"),
      NotificationResult1(
          code: "12362",
          message: "123462",
          data: [
            "12345",
            "65478",
            "Sáng nay Sơn Tùng - MTP vừa đăng một bức ảnh ",
            "34422",
            "4 phút trước",
            "https://halotravel.vn/wp-content/uploads/2020/12/yuini.co_.kr-di-choi-noel-mac-gi.jpg",
            "7482",
            "62532"
          ],
          lastUpdate: "123462",
          badge: "1234762"),
      NotificationResult1(
          code: "12363",
          message: "123463",
          data: [
            "12345",
            "65478",
            "Sáng nay Sơn Tùng - MTP vừa đăng một bức ảnh úp mở về một số điện thoại với dòng caption “Gọi anh” ",
            "34422",
            "4 phút trước",
            "https://halotravel.vn/wp-content/uploads/2020/12/yuini.co_.kr-trang-phuc-di-choi-noel.jpg",
            "7482",
            "62532"
          ],
          lastUpdate: "123463",
          badge: "1234763"),
    ];
  }
}
