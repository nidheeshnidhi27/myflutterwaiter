import 'package:flutter/services.dart';
import '../models/cart_model.dart';

class PrinterService {
  static const _channel = MethodChannel('com.example.my_flutter_login/printer');

  static Future<bool> printCart(
    String ip,
    int port,
    CartModel cart,
    String title,
  ) async {
    final buffer = StringBuffer();
    buffer.writeln(title);
    buffer.writeln('------------------------------');
    for (final ci in cart.items) {
      buffer.writeln(ci.item.name);
      buffer.writeln(
        'Qty: ${ci.qty}  Price: ₹${ci.item.price.toStringAsFixed(0)}',
      );
      buffer.writeln('Line: ₹${ci.total.toStringAsFixed(0)}');
      buffer.writeln('------------------------------');
    }
    buffer.writeln('Total: ₹${cart.totalPrice.toStringAsFixed(0)}');
    buffer.writeln('\n\n');
    final text = buffer.toString();
    final ok = await _channel.invokeMethod<bool>('printText', {
      'text': text,
      'ip': ip,
      'port': port,
    });
    return ok ?? false;
  }
}
