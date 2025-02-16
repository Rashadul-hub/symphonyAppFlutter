import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/supportgrid_item_model.dart';

class SupportgridItemWidget extends StatelessWidget {
  SupportgridItemWidget(this.supportgridItemModelObj,
      {Key? key, this.onTapOnlinesupport}) : super(key: key,);

  SupportgridItemModel supportgridItemModelObj;
  VoidCallback? onTapOnlinesupport;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapOnlinesupport?.call();
      },
      child: Container(
        // width: double.maxFinite,
        // padding: EdgeInsets.only(
        //   left: 14.h,
        //   top: 14.h,
        //   bottom: 14.h,
        // ),
        padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 14.h),

        decoration: AppDecoration.outlineIndigoA.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: supportgridItemModelObj.containerIcon!,
              height: 32.h,
              width: 32.h,
            ),
            SizedBox(height: 30.h),
            // SizedBox(height: 8.h), // Reduced spacing between icon and text

            Text(
              supportgridItemModelObj.containerTitle!,
              style: theme.textTheme.titleMedium,
            ),
            // SizedBox(height: 10.h),
            // SizedBox(height: 8.h), // Reduced spacing between icon and text

          ],
        ),
      ),
    );
  }
}
