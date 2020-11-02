import 'package:vrtools/data/models/people_model.dart';
import 'package:vrtools/data/models/projects_model.dart';
import 'package:vrtools/data/models/vrtools_model.dart';

class VRProjectEntity {
  final VRTools _vRTools;
  final List<People> _people;
  final List<Projects> _projects;

  VRProjectEntity(
    this._vRTools,
    this._people,
    this._projects,
  );

  List get props => [_vRTools, _people, _projects];

  VRTools get vRTools => _vRTools;

  List<People> get people => _people;

  List<Projects> get projects => _projects;
}
