import 'package:symphony_app/core/app_export.dart';

class ProcessorlistItemModel{
  ProcessorlistItemModel({
    this.processorOne,
    this.processorTwo,
    this.processorThree,
    this.id
}){
    processorOne = processorOne ?? ImageConstant.imgThumbsUp;
    processorTwo = processorTwo ?? "lbl_processor".tr;
    processorThree = processorThree ?? "msg_mediatek_helo_g999".tr;
    id = id ?? "";
  }

  String ? processorOne;
  String ? processorTwo;
  String ? processorThree;
  String ? id;


}