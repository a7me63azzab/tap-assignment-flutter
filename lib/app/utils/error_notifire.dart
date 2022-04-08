import 'package:flutter/foundation.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:tap_assignment/app/store/actions/error_actions.dart';
import 'package:tap_assignment/app/store/app_state/app_state.dart';
import 'package:tap_assignment/app/utils/ui.dart';

class ErrorNotifier extends StatelessWidget {
  ErrorNotifier({
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _ViewModel>(
      converter: (store) => _ViewModel.fromStore(store),
      builder: (context, vm) => child,
      onDidChange: (vm, vmx) {
        if (vm!.error != null) {
          vm.markErrorAsHandled!();
          if (kDebugMode) {
            print("FROM ERROR NOTIFIER SHOW ERROR -> ${vm.error.toString()}");
          }

          Ui.errorSnackBar(
              context: context, title: "Error", error: vm.error.toString());
        }
      },
      distinct: true,
    );
  }
}

class _ViewModel {
  _ViewModel({
    this.markErrorAsHandled,
    this.error,
  });

  final Function? markErrorAsHandled;
  final String? error;

  static _ViewModel fromStore(Store<AppState> store) {
    return _ViewModel(
      markErrorAsHandled: () => store.dispatch(ErrorHandledAction()),
      error: store.state.error,
    );
  }

  @override
  int get hashCode => error.hashCode;

  @override
  bool operator ==(other) =>
      identical(this, other) ||
      other is _ViewModel && other.error == this.error;
}
