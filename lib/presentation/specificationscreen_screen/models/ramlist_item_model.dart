import '../../../core/app_export.dart';

class RamlistitemModel{

  RamlistitemModel({
    this.image,
    this.ram,
    this.ramTwo,
    this.filesize,
    this.id,
}){
    image = image ?? ImageConstant.imgThumbsUp;
    ram = ram ?? "lbl_ram".tr;
    ramTwo = ramTwo ?? ImageConstant.imgRightArrow;
    filesize = filesize ?? "msg_16gb_8gb_expandable".tr;
    id = id ?? "";
  }



  String ? image;
  String ? ram;
  String ? ramTwo;
  String ? filesize;
  String? id;

}