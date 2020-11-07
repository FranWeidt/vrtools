import 'package:vrtools/domain/entities/vrproject_entity.dart';

abstract class MainPresenter {
  Future<VRProjectEntity> loadData();
}
