
import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/pref_utils.dart';

class ThemeProvider extends ChangeNotifier{
  late double height; // Assuming height is a double

  void initHeight(double initialHeight) {
    height = initialHeight; // Initialize properly
    notifyListeners();
  }

  themeChange(String themeType)async{
    PrefUtils().setThemeData(themeType);
    notifyListeners();
  }
}

class SizerInitializer extends StatefulWidget {
  final Widget child;
  const SizerInitializer({Key? key, required this.child}) : super(key: key);

  @override
  _SizerInitializerState createState() => _SizerInitializerState();
}

class _SizerInitializerState extends State<SizerInitializer> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final mediaQuery = MediaQuery.of(context);
    // Set screen size using MediaQuery info
    SizeUtils.setScreenSize(
      BoxConstraints(
        maxWidth: mediaQuery.size.width,
        maxHeight: mediaQuery.size.height,
      ),
      mediaQuery.orientation,
    );
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
