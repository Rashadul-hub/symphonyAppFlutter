import 'package:flutter/material.dart';
import 'package:symphony_app/presentation/queryscreen_screen/models/queryscreen_model.dart';

class QueryscreenProvider extends ChangeNotifier{

  TextEditingController onlineSupportController = TextEditingController();

  QueryscreenModel queryscreenModelObj = QueryscreenModel();

  @override
  void dispose() {
    super.dispose();
    onlineSupportController.dispose();
  }

}