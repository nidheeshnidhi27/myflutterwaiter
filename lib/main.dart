import 'package:flutter/material.dart';
import 'state/cart_scope.dart';
import 'models/cart_model.dart';
import 'state/auth_scope.dart';
import 'models/auth_model.dart';
import 'screens/auth_gate.dart';

void main() {
  runApp(const FoodOrderApp());
}

class FoodOrderApp extends StatelessWidget {
  const FoodOrderApp({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: const Color(0xFFFF6F00),
    );
    return AuthScope(
      auth: AuthModel(),
      child: CartScope(
        cart: CartModel(),
        child: MaterialApp(
          title: 'Just Order Online',
          theme: ThemeData(
            useMaterial3: true,
            colorScheme: colorScheme,
            scaffoldBackgroundColor: colorScheme.surface,
          ),
          home: const AuthGate(),
        ),
      ),
    );
  }
}
