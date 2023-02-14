import 'package:flutter/material.dart';
import 'package:mobile/core/network/network_manager.dart';
import 'package:mobile/screen/model/turnstile_process.dart';
import 'package:mobile/screen/service/profile_service.dart';
import 'package:mobile/screen/service/turnstile_service.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Center(
          child: Text(TurnstileService(networkManager: NetworkManager())
              .saveTurnstileProcess()
              .toString()),
        ),
      ),
    );
  }
}
