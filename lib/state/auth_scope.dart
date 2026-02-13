import 'package:flutter/widgets.dart';
import '../models/auth_model.dart';

class AuthScope extends InheritedNotifier<AuthModel> {
  const AuthScope({super.key, required AuthModel auth, required super.child})
      : super(notifier: auth);

  static AuthModel of(BuildContext context) {
    final scope = context.dependOnInheritedWidgetOfExactType<AuthScope>();
    assert(scope != null, 'AuthScope not found in context');
    return scope!.notifier!;
  }
}
