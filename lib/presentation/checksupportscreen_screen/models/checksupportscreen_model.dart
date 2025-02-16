import '../../../core/app_export.dart';
import '../../../core/utils/image_constant.dart';
import 'supportgrid_item_model.dart';

class ChecksupportscreenModel {
  List<SupportgridItemModel> supportgridItemList = [
    SupportgridItemModel(
        containerIcon: ImageConstant.imgClose, containerTitle: "lbl_hotline".tr),
    SupportgridItemModel(
        containerIcon: ImageConstant.imgThumbsUp,
        containerTitle: "lbl_service_center".tr),
    SupportgridItemModel(
        containerIcon: ImageConstant.imgThumbsUpErrorcontainer,
        containerTitle: "lbl_lso_query".tr),
    SupportgridItemModel(
        containerIcon: ImageConstant.imgPositiveReview,
        containerTitle: "lbl_feedback".tr),
    SupportgridItemModel(
        containerIcon: ImageConstant.imgClipboard1,
        containerTitle: "lbl_specification".tr),
    SupportgridItemModel(
        containerIcon: ImageConstant.imgCalender,
        containerTitle: "msg_book_an_appointment".tr)
  ];
}