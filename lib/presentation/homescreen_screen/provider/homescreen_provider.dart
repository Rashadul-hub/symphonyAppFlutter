import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/homescreen_model.dart';
import '../models/iphone_13_mini_four_initial_model.dart';
import '../models/list_item_model.dart';
import '../models/listmobiles_item_model.dart';

class HomescreenProvider extends ChangeNotifier {
  HomescreenModel homescreenModelObj =
      HomescreenModel();

  Iphone13MiniFourInitialModel iphone13miniFourInitialModelObj =  Iphone13MiniFourInitialModel();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }


}
