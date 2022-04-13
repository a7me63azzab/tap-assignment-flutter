import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:tap_assignment/app/store/actions/success_actions.dart';
import 'package:tap_assignment/app/store/app_state/app_state.dart';
import 'package:tap_assignment/app/utils/ui.dart';
import 'package:tap_assignment/gen/fonts.gen.dart';

class SuccessNotifier extends StatefulWidget {
  SuccessNotifier({
    required this.child,
  });

  final Widget child;

  @override
  State<SuccessNotifier> createState() => _SuccessNotifierState();
}

class _SuccessNotifierState extends State<SuccessNotifier> {
  bool show = false;
  String msg = '';

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _ViewModel>(
      converter: (store) => _ViewModel.fromStore(store),
      builder: (context, vm) => Material(
        child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                widget.child,
                show
                    ? Container(
                        width: MediaQuery.of(context).size.width,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.background,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              right: 20, left: 20, top: 24),
                          child: Row(
                            children: [
                              Icon(
                                CupertinoIcons.check_mark,
                                color: Theme.of(context).colorScheme.outline,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Center(
                                child: Text(
                                  msg,
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.outline,
                                    fontFamily: FontFamily.montserratSemiBold,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              Expanded(child: Container()),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    show = false;
                                  });
                                },
                                child: Icon(
                                  CupertinoIcons.clear_circled_solid,
                                  color: Theme.of(context).colorScheme.outline,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    : const SizedBox.shrink(),
              ],
            )),
      ),
      onDidChange: (vm, vmx) {
        if (vm!.success != null) {
          vm.markSuccessAsHandled!();
          if (kDebugMode) {
            print(
                "FROM SUCCESS NOTIFIER SHOW SUCCESS -> ${vm.success.toString()}");
          }

          // Ui.successSnackBar(
          //     context: context, title: "Success", msg: vm.success.toString());

          setState(() {
            show = true;
            msg = vm.success.toString();
          });

          Future.delayed(const Duration(seconds: 2), () {
            setState(() {
              show = false;
            });
          });
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
