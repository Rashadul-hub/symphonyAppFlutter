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
        width: double.maxFinite,
        padding: EdgeInsets.only(
          left: 14.h,
          top: 14.h,
          bottom: 14.h,
        ),
        decoration: AppDecoration.outlineIndigoA.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: supportgridItemModelObj.hotlineOne!,
              height: 32.h,
              width: 32.h,
            ),
            SizedBox(height: 32.h),
            Text(
              supportgridItemModelObj.hotlineTwo!,
              style: theme.textTheme.titleMedium,
            )
          ],
        ),
      ),
    );
  }
}
