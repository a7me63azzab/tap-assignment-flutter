import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux_navigation/flutter_redux_navigation.dart';
import 'package:logging/logging.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:redux/redux.dart';
import 'package:tap_assignment/app/app.dart';
import 'package:tap_assignment/app/store/app_state/app_state.dart';
import 'package:tap_assignment/app/store/reducers/app_reducers.dart';
import 'package:tap_assignment/app/utils/Persistor/persistor.dart';
import 'package:tap_assignment/app/utils/Persistor/serialization.dart';
import 'package:tap_assignment/app/utils/flutter_save_location.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Brightness? brightness = WidgetsBinding.instance?.window.platformBrightness;
  print("brightness => $brightness");

  _setupLogging();

  // Create Persistor
  final persistor = Persistor<AppState>(
    storage: FlutterStorage(),
    serializer: CustomAppStateSerializer<AppState>(AppState.fromJson),
  );

  //  Load initial state
  final initialState = await persistor.load();

  final store = Store<AppState>(appReducer,
      initialState: initialState ?? AppState.initial(),
      middleware: [
        persistor.createMiddleware(),
        const NavigationMiddleware(),
        thunkMiddleware
      ]);
  runApp(TapAssignmentApp(
    store: store,
  ));
}

void _setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    if (kDebugMode) {
      print("${rec.level.name}: ${rec.time}: ${rec.message}");
    }
  });
}
