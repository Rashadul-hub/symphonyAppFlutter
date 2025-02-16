import '../../../core/app_export.dart';

class SupportgridItemModel {
  SupportgridItemModel({this.hotlineOne, this.hotlineTwo, this.id}){
    hotlineOne = hotlineOne ?? ImageConstant.imgClose;
    hotlineTwo = hotlineTwo?? 'lbl_hotline'.tr;
    id = id ?? "";
  }
  String ? hotlineOne;
  String ? hotlineTwo;
  String ? id;
}