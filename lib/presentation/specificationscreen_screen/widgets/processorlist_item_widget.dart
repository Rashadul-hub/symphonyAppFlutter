import 'package:flutter/material.dart';
import 'package:symphony_app/core/utils/size_utils.dart';

import '../../../core/app_export.dart';
import '../models/processorlist_item_model.dart';
class ProcessorListItemWidget extends StatelessWidget {
  ProcessorListItemWidget(this.processorListItemModelObj, {Key? key})
      : super(
    key: key,
  );

  ProcessorlistItemModel processorListItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 162.h,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 18.h,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.h),
          CustomImageView(
            imagePath: processorListItemModelObj.processorOne!,
            height: 32.h,
            width: 34.h,
          ),
          SizedBox(height: 10.h),
          Text(
            processorListItemModelObj.processorTwo!,
            style: theme.textTheme.labelLarge,
          ),
          SizedBox(height: 2.h),
          Text(
            processorListItemModelObj.processorThree!,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.titleSmall!.copyWith(
              height: 1.40,
            ),
          ),
        ],
      ),
    );
  }
}