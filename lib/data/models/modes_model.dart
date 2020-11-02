import 'links_model.dart';

class Modes {
  String _name;
  String _imageSrc;
  String _modeSrc;
  String _instructions;
  List<Links> _links;

  Modes(
      {String name,
      String imageSrc,
      String modeSrc,
      String instructions,
      List<Links> links}) {
    this._name = name;
    this._imageSrc = imageSrc;
    this._modeSrc = modeSrc;
    this._instructions = instructions;
    this._links = links;
  }

  Modes.fromJson(Map<String, dynamic> json) {
    _name = json['name'];
    _imageSrc = json['imageSrc'];
    _modeSrc = json['modeSrc'];
    _instructions = json['instructions'];
    if (json['links'] != null) {
      _links = new List<Links>();
      json['links'].forEach((v) {
        _links.add(new Links.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this._name;
    data['imageSrc'] = this._imageSrc;
    data['modeSrc'] = this._modeSrc;
    data['instructions'] = this._instructions;
    if (this._links != null) {
      data['links'] = this._links.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
