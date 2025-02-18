
import 'package:symphony_app/presentation/map_model.dart';

import 'homescreen_screen/models/dashboard_model.dart';
import 'package:flutter/material.dart';
class MapProvider extends ChangeNotifier {
  MapModel mapModelObj =  MapModel();


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }


}
