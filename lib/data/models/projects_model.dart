import 'package:vrtools/data/models/references_model.dart';

import 'modes_model.dart';

class Projects {
  String _name;
  String _imageSrc;
  String _description;
  String _threejsSrc;
  List<References> _references;
  List<Modes> _modes;

  Projects(
      {String name,
      String imageSrc,
      String description,
      String threejsSrc,
      List<References> references,
      List<Modes> modes}) {
    this._name = name;
    this._imageSrc = imageSrc;
    this._description = description;
    this._threejsSrc = threejsSrc;
    this._references = references;
    this._modes = modes;
  }

  Projects.fromJson(Map<String, dynamic> json) {
    _name = json['name'];
    _imageSrc = json['imageSrc'];
    _description = json['description'];
    _threejsSrc = json['threejsSrc'];
    if (json['references'] != null) {
      _references = new List<References>();
      json['references'].forEach((v) {
        _references.add(new References.fromJson(v));
      });
    }
    if (json['modes'] != null) {
      _modes = new List<Modes>();
      json['modes'].forEach((v) {
        _modes.add(new Modes.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this._name;
    data['imageSrc'] = this._imageSrc;
    data['description'] = this._description;
    data['threejsSrc'] = this._threejsSrc;
    if (this._references != null) {
      data['references'] = this._references.map((v) => v.toJson()).toList();
    }
    if (this._modes != null) {
      data['modes'] = this._modes.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
