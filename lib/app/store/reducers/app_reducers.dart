import 'package:tap_assignment/app/store/app_state/app_state.dart';
import 'package:tap_assignment/app/store/reducers/error_reducer.dart';
import 'package:tap_assignment/app/store/reducers/success_reducer.dart';

AppState appReducer(AppState state, action) {
  return AppState((p) => p
    ..success = successReducer(state.success, action)
    ..error = errorReducer(state.error, action));
}
