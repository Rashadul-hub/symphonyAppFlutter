import '../../../core/app_export.dart';
import '../../../core/utils/image_constant.dart';
import 'supportgrid_item_model.dart';

class ChecksupportscreenModel {
  List<SupportgridItemModel> supportgridItemList = [
    SupportgridItemModel(
        hotlineOne: ImageConstant.imgClose, hotlineTwo: "lbl_hotline".tr),
    SupportgridItemModel(
        hotlineOne: ImageConstant.imgThumbsUp,
        hotlineTwo: "lbl_service_center".tr),
    SupportgridItemModel(
        hotlineOne: ImageConstant.imgThumbsUpErrorcontainer,
        hotlineTwo: "lbl_lso_query".tr),
    SupportgridItemModel(
        hotlineOne: ImageConstant.imgPositiveReview,
        hotlineTwo: "lbl_feedback".tr),
    SupportgridItemModel(
        hotlineOne: ImageConstant.imgClipboard1,
        hotlineTwo: "lbl_specification".tr),
    SupportgridItemModel(
        hotlineOne: ImageConstant.imgCalender,
        hotlineTwo: "msg_book_an_appointment".tr)
  ];
}