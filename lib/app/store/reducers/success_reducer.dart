import 'package:redux/redux.dart';
import 'package:tap_assignment/app/store/actions/success_actions.dart';

final Reducer<String?> successReducer = combineReducers<String?>([
  TypedReducer<String?, SuccessOccurredAction>(_successOccurredReducer),
  TypedReducer<String?, SuccessHandledAction>(_successHandledReducer),
]);

String? _successOccurredReducer(
    String? exception, SuccessOccurredAction action) {
  return action.successMsg;
}

String? _successHandledReducer(String? _, SuccessHandledAction action) {
  return null;
}