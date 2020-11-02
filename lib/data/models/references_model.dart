class References {
  String _text;

  References({String text}) {
    this._text = text;
  }

  References.fromJson(Map<String, dynamic> json) {
    _text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this._text;
    return data;
  }
}
