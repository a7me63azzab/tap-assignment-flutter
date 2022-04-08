import 'package:redux/redux.dart';
import 'package:tap_assignment/app/store/actions/error_actions.dart';

final Reducer<String?> errorReducer = combineReducers<String?>([
  TypedReducer<String?, ErrorOccurredAction>(_errorOccurredReducer),
  TypedReducer<String?, ErrorHandledAction>(_errorHandledReducer),
]);

String? _errorOccurredReducer(
    String? exception, ErrorOccurredAction action) {
  return action.exception;
}

String? _errorHandledReducer(String? _, ErrorHandledAction action) {
  return null;
}