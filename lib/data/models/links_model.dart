class Links {
  String _name;
  String _url;

  Links({String name, String url}) {
    this._name = name;
    this._url = url;
  }

  Links.fromJson(Map<String, dynamic> json) {
    _name = json['name'];
    _url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this._name;
    data['url'] = this._url;
    return data;
  }
}
