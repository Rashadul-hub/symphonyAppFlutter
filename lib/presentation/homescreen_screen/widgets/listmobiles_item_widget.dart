import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listmobiles_item_model.dart';

class ListmobilesItemWidget extends StatelessWidget {
  ListmobilesItemWidget(this.listmobilesItemModelObj, {Key? key}) : super(key: key);

  ListmobilesItemModel listmobilesItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 102.h,
      padding: EdgeInsets.symmetric(horizontal: 10.h),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 6.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              listmobilesItemModelObj.mobiles!,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.titleMediumGray900,
            ),
          ),
          SizedBox(height: 14.h),
          CustomImageView(
            imagePath: listmobilesItemModelObj.mobilesTwo!,
            height: 80.h,
            width: 82.h,
          ),
        ],
      ),
    );
  }
}