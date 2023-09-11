import 'package:flutter/material.dart';

class ListTileModel {
  IconData leadingIcon;
  String titleString;
  Function()? onTap;
  ListTileModel({required this.leadingIcon, required this.titleString});
}
