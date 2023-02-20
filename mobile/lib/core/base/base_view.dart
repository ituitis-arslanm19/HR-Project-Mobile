import 'package:flutter/material.dart';
import 'package:mobile/core/base/base_view_model.dart';
import 'package:mobx/mobx.dart';

class BaseView {
  final BaseViewModel viewModel;
  final int width;
  final int height;

  BaseView(this.viewModel, this.width, this.height);

  void init() {
    viewModel.init();
  }
}
