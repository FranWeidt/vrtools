//TODO: Create Interfaces For Each Model

//TODO: Create Factory Entities inside the models

//TODO: Use Abstract Classes in Controller signature

import 'package:meta/meta.dart';

class VRToolsEntity {
  final String _siteURL;
  final String _imageURL;
  final String _description;

  List get props => [_siteURL, _imageURL, _description];

  String get siteURL => _siteURL;

  String get imageURL => _imageURL;

  String get description => _description;

  VRToolsEntity(
    this._siteURL,
    this._imageURL,
    this._description,
  );
}
