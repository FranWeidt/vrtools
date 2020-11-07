import 'package:meta/meta.dart';

import 'package:vrtools/domain/entities/vrproject_entity.dart';
import 'package:vrtools/domain/usecases/load_vrproject.dart';
import 'package:vrtools/main/factories/pages/main_presenter.dart';

class VRProjectPresenter implements MainPresenter {
  final LoadVRProject loadVRProject;

  VRProjectPresenter({@required this.loadVRProject});

  Future<VRProjectEntity> loadData() async {
    return await loadVRProject.load();
  }
}
