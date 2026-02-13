import 'package:flutter/material.dart';
import '../state/auth_scope.dart';
import 'login_screen.dart';
import 'home_screen.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    final auth = AuthScope.of(context);
    return auth.isLoggedIn ? const HomeScreen() : const LoginScreen();
  }
}
