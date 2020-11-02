import 'package:vrtools/domain/entities/vrtools_entity.dart';

class VRTools {
  String _mainAddress;
  String _mainImage;
  String _about;

  VRTools(this._mainAddress, this._mainImage, this._about);

  String get siteURL => _mainAddress;

  String get imageURL => _mainImage;

  String get description => _about;

  List get props => [siteURL, imageURL, description];

  VRTools.fromJson(Map<String, dynamic> json) {
    _mainAddress = json['mainAddress'];
    _mainImage = json['mainImage'];
    _about = json['about'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mainAddress'] = this._mainAddress;
    data['mainImage'] = this._mainImage;
    data['about'] = this._about;
    return data;
  }

  factory VRTools.fromEntity(VRToolsEntity entity) => VRTools(
        entity.siteURL,
        entity.imageURL,
        entity.description,
      );

  VRToolsEntity toEntity() => VRToolsEntity(
        siteURL,
        imageURL,
        description,
      );
}
