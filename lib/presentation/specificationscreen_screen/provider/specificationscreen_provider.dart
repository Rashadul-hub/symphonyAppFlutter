
import 'package:flutter/material.dart';
import 'package:symphony_app/presentation/specificationscreen_screen/models/specificationscreen_model.dart';

class SpecificationscreenProvider extends ChangeNotifier{

  SpecificationscreenModel specificationscreenModelObj = SpecificationscreenModel();

  @override
  void dispose() {
    super.dispose();
  }
}