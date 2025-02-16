import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'core/app_export.dart';



var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();

  Future.wait([
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]),
    PrefUtils().init()
  ]).then((value) {
    runApp(SizerInitializer(child: MyApp()));
  });
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//
//         return LayoutBuilder(
//           builder: (context , constraints) {
//             SizeUtils.setScreenSize(constraints, MediaQuery.of(context).orientation);
//
//             return Sizer(
//
//               builder: (context, orientation, deviceType) {
//
//                 return ChangeNotifierProvider<ThemeProvider>(
//                   create: (context) => ThemeProvider(),
//                   child: Consumer<ThemeProvider>(
//                     builder: (context, provider, child) {
//
//                       return MaterialApp(
//                         title: 'phone',
//                         debugShowCheckedModeBanner: false,
//                         theme: theme,
//                         builder: (context, child) {
//                           return MediaQuery(
//                             data: MediaQuery.of(context).copyWith(
//                               textScaler: TextScaler.linear(1.0),
//                             ),
//                             child: child!,
//                           );
//                         },
//                         navigatorKey: NavigatorService.navigatorKey,
//                         localizationsDelegates: [
//                           AppLocalizationDelegate(),
//                           GlobalMaterialLocalizations.delegate,
//                           GlobalWidgetsLocalizations.delegate,
//                           GlobalCupertinoLocalizations.delegate
//                         ],
//                         locale: Locale('en', ''),
//                         supportedLocales: [Locale('en', '')],
//                         initialRoute: AppRoutes.initialRoute,
//                         routes: AppRoutes.routes,
//                       );
//                     },
//                   ),
//                 );
//               },
//             );
//           }
//         );
//
//
//   }
// }



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeProvider>(
      create: (context) => ThemeProvider(),
      child: Sizer(
        builder: (context, orientation, deviceType) {
          return Consumer<ThemeProvider>(
            builder: (context, provider, child) {
              return MaterialApp(
                title: 'phone',
                debugShowCheckedModeBanner: false,
                theme: theme, // This uses the theme getter which calls .h extensions
                builder: (context, child) {
                  return MediaQuery(
                    data: MediaQuery.of(context).copyWith(
                      textScaler: TextScaler.linear(1.0),
                    ),
                    child: child!,
                  );
                },
                navigatorKey: NavigatorService.navigatorKey,
                localizationsDelegates: [
                  AppLocalizationDelegate(),
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                locale: Locale('en', ''),
                supportedLocales: [Locale('en', '')],
                // initialRoute: AppRoutes.checksupportscreenScreen,
                initialRoute: AppRoutes.initialRoute,
                routes: AppRoutes.routes,
              );
            },
          );
        },
      ),
    );
  }
}
