import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_navigation/flutter_redux_navigation.dart';
import 'package:redux/redux.dart';
import 'package:tap_assignment/app/pages/all_products_page.dart';
import 'package:tap_assignment/app/store/app_state/app_state.dart';
import 'package:tap_assignment/app/utils/app_theme.dart';
import 'package:tap_assignment/app/utils/error_notifire.dart';
import 'package:tap_assignment/app/utils/success_notifire.dart';

class TapAssignmentApp extends StatelessWidget {
  final Store<AppState> store;

  const TapAssignmentApp({Key? key, required this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: 'Tap Assignment App',
        home: const ManageProducts(),
        builder: (context, Widget? child) {
          return ErrorNotifier(
            child: SuccessNotifier(child: child!),
          );
        },
        navigatorKey: NavigatorHolder.navigatorKey,
        onGenerateRoute: _getRoute,
        themeMode: store.state.settingsState.appTheme == 'light'
            ? ThemeMode.light
            : ThemeMode.dark,
        theme: CustomAppTheme.getLightTheme(store.state),
        darkTheme: CustomAppTheme.getDarkTheme(store.state),
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
