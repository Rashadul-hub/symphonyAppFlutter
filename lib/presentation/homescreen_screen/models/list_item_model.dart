import '../../../core/app_export.dart';

class ListItemModel{
  ListItemModel({this.image, this.id}) {
    image = image ?? ImageConstant.imgMenu;
    id = id ?? "";
  }

  String ? image;
  String ? id;


}