import 'package:vrtools/domain/entities/vrproject_entity.dart';

abstract class LoadVRProject {
  Future<VRProjectEntity> load();
}
