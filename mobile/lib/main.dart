import 'package:flutter/material.dart';
import 'package:mobile/core/network/network_manager.dart';
import 'package:mobile/core/widgets/other/profile_card.dart';
import 'package:mobile/screen/model/turnstile_process.dart';
import 'package:mobile/screen/service/profile_service.dart';
import 'package:mobile/screen/service/turnstile_service.dart';
import 'package:mobile/screen/view/login_view.dart';
import 'package:mobile/screen/view/main_view.dart';
import 'package:mobile/screen/view/profile_view.dart';
import 'package:mobile/screen/view/qr_view.dart';
import 'package:mobile/screen/viewModel/qr_view_model.dart';
import 'package:mobile/test/test.dart';
import 'package:mobx/mobx.dart';

import 'core/theme/app_theme.dart';
import 'core/util/size_config.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      // ignore: prefer_const_constructors
      home: Scaffold(
        body: LoginView(),
      ),
    );
  }
}
