// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:task5/models/listTile_Models.dart';
import 'package:task5/widgets/components.dart';

class ComponentView extends StatelessWidget {
  List<ListTileModel> modelList = [
    ListTileModel(leadingIcon: Icons.email, titleString: 'Email'),
    ListTileModel(leadingIcon: Icons.settings, titleString: 'Settings'),
    ListTileModel(
        leadingIcon: Icons.group_add_sharp, titleString: 'Invite Friends'),
    ListTileModel(leadingIcon: Icons.logout, titleString: 'Logout'),
    ListTileModel(leadingIcon: Icons.email, titleString: 'Email'),
    ListTileModel(leadingIcon: Icons.settings, titleString: 'Settings'),
    ListTileModel(
        leadingIcon: Icons.group_add_sharp, titleString: 'Invite Friends'),
    ListTileModel(leadingIcon: Icons.logout, titleString: 'Logout'),
    ListTileModel(leadingIcon: Icons.logout, titleString: 'Logout'),
    ListTileModel(leadingIcon: Icons.logout, titleString: 'Logout'),
    ListTileModel(leadingIcon: Icons.logout, titleString: 'Logout'),
  ];
  ComponentView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) => Component(model: modelList[index]),
        itemCount: modelList.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(
              color: Colors.grey,
              thickness: 0.25,
              endIndent: 20,
              indent: 13,
            ));
  }
}
