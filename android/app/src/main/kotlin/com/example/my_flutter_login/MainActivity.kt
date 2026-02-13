package com.example.my_flutter_login

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {
    private val channelName = "com.example.my_flutter_login/printer"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, channelName).setMethodCallHandler { call, result ->
            when (call.method) {
                "printText" -> {
                    val args = call.arguments as Map<*, *>
                    val text = args["text"] as String
                    val ip = (args["ip"] as? String) ?: "192.168.1.101"
                    val port = (args["port"] as? Int) ?: 9100
                    PrintConnection(ip, port, text, result).execute()
                }
                else -> result.notImplemented()
            }
        }
    }
}
