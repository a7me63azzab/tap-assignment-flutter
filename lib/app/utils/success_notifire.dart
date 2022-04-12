import 'package:flutter/foundation.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:redux/redux.dart';
import 'package:tap_assignment/app/store/actions/success_actions.dart';
import 'package:tap_assignment/app/store/app_state/app_state.dart';
import 'package:tap_assignment/app/utils/ui.dart';

class SuccessNotifier extends StatelessWidget {
  SuccessNotifier({
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _ViewModel>(
      converter: (store) => _ViewModel.fromStore(store),
      builder: (context, vm) => child,
      onDidChange: (vm, vmx) {
        if (vm!.success != null) {
          vm.markSuccessAsHandled!();
          if (kDebugMode) {
            print(
                "FROM SUCCESS NOTIFIER SHOW SUCCESS -> ${vm.success.toString()}");
          }

          // showToastWidget(Text(vm.success.toString()), context: context);

          // showToast(
          //   'This is normal toast with animation',
          //   context: context,
          //   animation: StyledToastAnimation.scale,
          //   reverseAnimation: StyledToastAnimation.fade,
          //   position: StyledToastPosition.center,
          //   animDuration: const Duration(seconds: 1),
          //   duration: const Duration(seconds: 4),
          //   curve: Curves.elasticOut,
          //   reverseCurve: Curves.linear,
          // );

          Ui.successSnackBar(
              context: context, title: "Success", msg: vm.success.toString());
        }
      },
      distinct: true,
    );
  }
}

class _ViewModel {
  _ViewModel({
    this.markSuccessAsHandled,
    this.success,
  });

  final Function? markSuccessAsHandled;
  final String? success;

  static _ViewModel fromStore(Store<AppState> store) {
    return _ViewModel(
      markSuccessAsHandled: () => store.dispatch(SuccessHandledAction()),
      success: store.state.success,
    );
  }

  @override
  int get hashCode => success.hashCode;

  @override
  bool operator ==(other) =>
      identical(this, other) || other is _ViewModel && other.success == success;
}
