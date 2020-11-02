class VRTools {
  String _mainAddress;
  String _mainImage;
  String _about;

  VRTools({String mainAddress, String mainImage, String about}) {
    this._mainAddress = mainAddress;
    this._mainImage = mainImage;
    this._about = about;
  }

  String get mainAddress => _mainAddress;

  String get mainImage => _mainImage;

  String get about => _about;

  VRTools.fromJson(Map<String, dynamic> json) {
    _mainAddress = json['mainAddress'];
    _mainImage = json['mainImage'];
    _about = json['about'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mainAddress'] = this._mainAddress;
    data['mainImage'] = this._mainImage;
    data['about'] = this._about;
    return data;
  }
}
