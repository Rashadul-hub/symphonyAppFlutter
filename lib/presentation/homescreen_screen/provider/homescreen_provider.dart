import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/homescreen_model.dart';
import '../models/dashboard_model.dart';
import '../models/list_item_model.dart';
import '../models/listmobiles_item_model.dart';

class HomescreenProvider extends ChangeNotifier {
  HomescreenModel homescreenModelObj =
      HomescreenModel();

  DashboardModel dashBoardModelObj =  DashboardModel();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }


}
