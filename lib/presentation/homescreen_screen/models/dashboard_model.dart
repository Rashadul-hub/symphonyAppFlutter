import '../../../core/app_export.dart';
import 'list_item_model.dart';
import 'listmobiles_item_model.dart';


class DashboardModel{
  List<ListmobilesItemModel> listmobilesItemList = [
    ListmobilesItemModel(
      mobiles: "lbl_mobiles".tr,
      mobilesTwo: ImageConstant.img561710737163876Slide28png
    ),
    ListmobilesItemModel(
      mobiles: "lbl_watches".tr,
      mobilesTwo: ImageConstant.imgWatch
    ),
    ListmobilesItemModel(
        mobiles: "lbl_accessories".tr,
        mobilesTwo: ImageConstant.imgCebel
    ),
      ListmobilesItemModel(
      mobiles: "lbl_mobiles".tr,
      mobilesTwo: ImageConstant.img561710737163876Slide28png
    ),
    ListmobilesItemModel(
      mobiles: "lbl_watches".tr,
      mobilesTwo: ImageConstant.imgWatch
    ),
    ListmobilesItemModel(
        mobiles: "lbl_accessories".tr,
        mobilesTwo: ImageConstant.imgCebel
    ),


  ];


  List<ListItemModel> listItemList = [
    ListItemModel(image: ImageConstant.games1),
    ListItemModel(image: ImageConstant.games2),
    ListItemModel(image: ImageConstant.games3),
    ListItemModel(image: ImageConstant.games1),
    ListItemModel(image: ImageConstant.games2),
    ListItemModel(image: ImageConstant.games3),

  ];



}