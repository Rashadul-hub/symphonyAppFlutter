import 'package:flutter/material.dart';
import 'package:symphony_app/core/app_export.dart';
import 'package:symphony_app/presentation/specificationscreen_screen/models/ramlist_item_model.dart';

class RamlListItemWidget extends StatelessWidget {
  RamlListItemWidget(this.ramlListItemModelObj, {Key? key})
      : super(
    key: key,
  );

  RamlistitemModel ramlListItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 162.h,
      padding: EdgeInsets.all(16.h),
      decoration:BoxDecoration(
        color: Colors.black26,
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 6.h),
          CustomImageView(
            imagePath: ramlListItemModelObj.image!,
            height: 32.h,
            width: 34.h,
          ),
          SizedBox(height: 12.h),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              children: [
                Text(
                  ramlListItemModelObj.ram!,
                  style: theme.textTheme.labelLarge!.copyWith(
                    color: Colors.black
                  ),
                 ),
                CustomImageView(
                  imagePath: ramlListItemModelObj.ramTwo!,
                  height: 10.h,
                  width: 10.h,
                  margin: EdgeInsets.only(left: 4.h),
                )
              ],
            ),
          ),
          SizedBox(height: 4.h),
          SizedBox(
            width: 116.h,
            child: Text(
              ramlListItemModelObj.filesize!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.titleSmall!.copyWith(
                height: 1.40,
                color: Colors.black
              ),
            ),
          ),
        ],
      ),
    );
  }
}