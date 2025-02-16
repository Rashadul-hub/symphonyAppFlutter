import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/list_item_model.dart';

class ListItemWidget extends StatelessWidget {
  ListItemWidget(this.listItemModelObj,
      {super.key});

  ListItemModel listItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 104.h,
      child: CustomImageView(
        imagePath: listItemModelObj.image!,
        height: 126.h,
        width: 104.h,
        radius: BorderRadius.circular(10.h),
      ),
    );
  }
}
