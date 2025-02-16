import '../../../core/app_export.dart';


class ListmobilesItemModel {
  ListmobilesItemModel({this.mobiles, this.mobilesTwo, this.id}) {
    mobiles = mobiles ?? "lbl_mobiles".tr;
    mobilesTwo = mobilesTwo ?? ImageConstant.img561710737163876Slide28png;
    id = id ?? "";
  }


String? mobiles;

String? mobilesTwo;

String? id;

}
