class SavedSearchResult {
  String code;
  String message;
  Data data;

  SavedSearchResult({this.code, this.message, this.data});

  SavedSearchResult.fromJson(Map<String, dynamic> json) {
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
  List<SavedSearch> listSavedSearch;

  Data({this.listSavedSearch});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['list_saved_search'] != null) {
      listSavedSearch = new List<SavedSearch>();
      json['list_saved_search'].forEach((v) {
        listSavedSearch.add(new SavedSearch.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.listSavedSearch != null) {
      data['list_saved_search'] =
          this.listSavedSearch.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SavedSearch {
  int id;
  String keyword;
  String created;

  SavedSearch({this.id, this.keyword, this.created});

  SavedSearch.fromJson(Map<String, dynamic> json) {
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
