
import 'package:flutter/material.dart';
import 'package:task5/models/listTile_Models.dart';

// ignore: must_be_immutable
class Component extends StatelessWidget {
  ListTileModel model;
  Component({super.key, required this.model});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(
            model.leadingIcon,
            color: Colors.black,
          ),
          title: Text(model.titleString,
              style: const TextStyle(color: Colors.black, fontSize: 15)),
          trailing:
              const Icon(Icons.arrow_forward, color: Colors.black, size: 15),
          onTap: model.onTap,
        ),
       
      ],
    );
  }
}
