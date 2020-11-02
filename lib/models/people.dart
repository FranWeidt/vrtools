class People {
  String _name;
  String _imageSrc;
  String _profile;

  People({String name, String imageSrc, String profile}) {
    this._name = name;
    this._imageSrc = imageSrc;
    this._profile = profile;
  }

  People.fromJson(Map<String, dynamic> json) {
    _name = json['name'];
    _imageSrc = json['imageSrc'];
    _profile = json['profile'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this._name;
    data['imageSrc'] = this._imageSrc;
    data['profile'] = this._profile;
    return data;
  }
}
