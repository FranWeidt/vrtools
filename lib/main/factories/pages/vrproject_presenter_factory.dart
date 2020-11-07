import 'package:vrtools/main/factories/pages/main_presenter.dart';
import 'package:vrtools/main/factories/usecases/load_vrproject_factory.dart';
import 'package:vrtools/presentation/vrproject_presenter.dart';

MainPresenter makeVRProjectPresenter() => VRProjectPresenter(
      loadVRProject: makeRemoteLoadVRProject(),
    );
