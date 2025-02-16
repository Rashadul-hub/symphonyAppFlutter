import '../../../core/app_export.dart';
import '../../../core/utils/image_constant.dart';
import 'supportgrid_item_model.dart';

class ChecksupportscreenModel {
  List<SupportgridItemModel> supportgridItemList = [
    SupportgridItemModel(
        hotlineOne: ImageConstant.imgMenu, hotlineTwo: "lbl_hotline".tr),
    SupportgridItemModel(
        hotlineOne: ImageConstant.imgMenu,
        hotlineTwo: "lbl_service_center".tr),
    SupportgridItemModel(
        hotlineOne: ImageConstant.imgMenu,
        hotlineTwo: "lbl_lso_query".tr),
    SupportgridItemModel(
        hotlineOne: ImageConstant.imgMenu,
        hotlineTwo: "lbl_feedback".tr),
    SupportgridItemModel(
        hotlineOne: ImageConstant.imgMenu,
        hotlineTwo: "lbl_specification".tr),
    SupportgridItemModel(
        hotlineOne: ImageConstant.imgMenu,
        hotlineTwo: "msg_book_an_appointment".tr)
  ];
}