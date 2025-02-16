import '../../../core/app_export.dart';

class SupportgridItemModel {
  SupportgridItemModel({this.containerIcon, this.containerTitle, this.id}){
    containerIcon = containerIcon ?? ImageConstant.imgClose;
    containerTitle =    containerTitle?? 'lbl_hotline'.tr;
    id = id ?? "";
  }
  String ? containerIcon;
  String ? containerTitle;
  String ? id;
}