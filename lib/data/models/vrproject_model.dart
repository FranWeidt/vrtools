import 'package:vrtools/domain/entities/vrproject_entity.dart';

import 'people_model.dart';
import 'projects_model.dart';
import 'vrtools_model.dart';

class VRProject {
  VRTools _vRTools;
  List<People> _people;
  List<Projects> _projects;

  VRProject(this._vRTools, this._people, this._projects);

  VRTools get vRTools => _vRTools;
  List<People> get people => _people;
  List<Projects> get projects => _projects;

  VRProject.fromJson(Map<String, dynamic> json) {
    _vRTools =
        json['VRTools'] != null ? new VRTools.fromJson(json['VRTools']) : null;
    if (json['People'] != null) {
      _people = new List<People>();
      json['People'].forEach((v) {
        _people.add(new People.fromJson(v));
      });
    }
    if (json['Projects'] != null) {
      _projects = new List<Projects>();
      json['Projects'].forEach((v) {
        _projects.add(new Projects.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._vRTools != null) {
      data['VRTools'] = this._vRTools.toJson();
    }
    if (this._people != null) {
      data['People'] = this._people.map((v) => v.toJson()).toList();
    }
    if (this._projects != null) {
      data['Projects'] = this._projects.map((v) => v.toJson()).toList();
    }
    return data;
  }

  factory VRProject.fromEntity(VRProjectEntity entity) => VRProject(
        entity.vRTools,
        entity.people,
        entity.projects,
      );

  VRProjectEntity toEntity() => VRProjectEntity(
        vRTools,
        people,
        projects,
      );
}
