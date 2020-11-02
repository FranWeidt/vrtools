import 'package:vrtools/domain/entities/vrproject_entity.dart';

import 'package:vrtools/main/factories/usecases/load_vrproject_factory.dart';

Future<VRProjectEntity> loadData() async {
  var loadVRProject = makeRemoteLoadVRProject();
  return await loadVRProject.load();
}
