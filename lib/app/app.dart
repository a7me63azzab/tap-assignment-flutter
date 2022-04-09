import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_navigation/flutter_redux_navigation.dart';
import 'package:redux/redux.dart';
import 'package:tap_assignment/app/pages/all_products_page.dart';
import 'package:tap_assignment/app/store/app_state/app_state.dart';
import 'package:tap_assignment/app/utils/app_theme.dart';
import 'package:tap_assignment/app/utils/error_notifire.dart';
import 'package:tap_assignment/app/utils/success_notifire.dart';
import 'package:tap_assignment/app/utils/theme_mode_notifier.dart';

class TapAssignmentApp extends StatefulWidget {
  final Store<AppState> store;

  const TapAssignmentApp({Key? key, required this.store}) : super(key: key);

  @override
  State<TapAssignmentApp> createState() => _TapAssignmentAppState();
}

class _TapAssignmentAppState extends State<TapAssignmentApp>
    with WidgetsBindingObserver {
  late ThemeModeNotifier _themeModeNotifier;
  late final WidgetsBinding? _widgetsBinding;
  late final FlutterWindow? _flutterWindow;

  @override
  void initState() {
    super.initState();

    _widgetsBinding = WidgetsBinding.instance;
    _widgetsBinding?.addObserver(this);
    _flutterWindow = _widgetsBinding?.window;

    print(
        "_flutterWindow?.platformDispatcher.platformBrightness => ${_flutterWindow?.platformDispatcher.platformBrightness}");

    _themeModeNotifier = ThemeModeNotifier(
      ValueNotifier<Brightness>(
          _flutterWindow!.platformDispatcher.platformBrightness),
    );
  }

  @override
  void didChangePlatformBrightness() {
    _themeModeNotifier.changeBrightness(
        brightness: _flutterWindow!.platformDispatcher.platformBrightness);
    super.didChangePlatformBrightness();
  }

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: widget.store,
      child: ValueListenableBuilder<Brightness>(
        valueListenable: _themeModeNotifier.appBrightness,
        builder: (BuildContext context, brightness, Widget? child) {
          return MaterialApp(
            title: 'Tap Assignment App',
            home: const ManageProducts(),
            builder: (context, Widget? child) {
              return ErrorNotifier(
                child: SuccessNotifier(child: child!),
              );
            },
            navigatorKey: NavigatorHolder.navigatorKey,
            onGenerateRoute: _getRoute,
            themeMode:
                brightness == Brightness.dark ? ThemeMode.dark : ThemeMode.light,
            // themeMode: widget.store.state.settingsState.appTheme == 'light'
            //     ? ThemeMode.light
            //     : ThemeMode.dark,
            theme: CustomAppTheme.getLightTheme(widget.store.state),
            darkTheme: CustomAppTheme.getDarkTheme(widget.store.state),
          );
        },
      ),
    );
  }

  Route _getRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/addproduct':
        return _buildRoute(settings, Container());
      case '/allProducts':
        return _buildRoute(settings, const ManageProducts());
      case '/splash':
        return _buildRoute(
          settings,
          Container(),
        );
      default:
        return _buildRoute(settings, Container());
    }
  }

  MaterialPageRoute _buildRoute(RouteSettings settings, Widget builder) {
    return MaterialPageRoute(
      settings: settings,
      builder: (BuildContext context) => builder,
    );
  }
}
