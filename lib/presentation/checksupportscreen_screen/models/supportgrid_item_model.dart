import '../../../core/app_export.dart';

class SupportgridItemModel {
  SupportgridItemModel({this.hotlineOne, this.hotlineTwo, this.id}){
    hotlineOne = hotlineOne ?? ImageConstant.imgMenu;
    hotlineTwo = hotlineTwo?? 'lbl_hotlinw'.tr;
    id = id ?? "";
  }
  String ? hotlineOne;
  String ? hotlineTwo;
  String ? id;
}