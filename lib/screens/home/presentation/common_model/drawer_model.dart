import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neostore_app/route/route_constants.dart';

class DrawerModel {
  Text? title;
  Icon? leadingIcon;
  bool? showCartCount;
  int? cartCount;
  String route;
  DrawerModel(
      {required this.title,
      required this.leadingIcon,
      @Default(false) this.showCartCount,
      @Default(0) this.cartCount,
      required this.route});
}
