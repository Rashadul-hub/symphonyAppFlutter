
import '../../../core/app_export.dart';
import 'processorlist_item_model.dart';
import 'ramlist_item_model.dart';

 class SpecificationscreenModel {
  List<ProcessorlistItemModel> processorlistItemList = [
    ProcessorlistItemModel(
      processorOne: ImageConstant.imgProcessor,
      processorTwo: "lbl_processor".tr,
      processorThree: "msg_mediatek_helio_g99".tr,
    ),
    ProcessorlistItemModel(
      processorOne: ImageConstant.imgStorage,
      processorTwo: "lbl_storage".tr,
      processorThree: "lbl_rom_128gb".tr,
    ),
  ];

  List<RamlistitemModel> ramlistItemList = [
    RamlistitemModel(
      image: ImageConstant.imgRam,
      ram: "lbl_ram".tr,
      ramTwo: ImageConstant.imgRightArrow,
      filesize: "msg_16gb_8gb_expandable".tr,
    ),
    RamlistitemModel(
      ram: "lbl_sim_card".tr,
      ramTwo: null,
      image: ImageConstant.imgSim,
      filesize: "msg_nano_nano_micro".tr,
    ),
  ];
}