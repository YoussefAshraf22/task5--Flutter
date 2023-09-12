// ignore: file_names
import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        // surfaceTintColor: Colors.white,
        // backgroundColor: Colors.white,
        // shadowColor: Colors.white,
        child: ListView(
      children: [
        const UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.black,
              radius: 35,
              child: CircleAvatar(
                backgroundImage: AssetImage('person.png'),
                radius: 33,
              ),
            ),
            accountName: Text('Youssef'),
            accountEmail: Text('Ussef@gmail.com')),
        ListTile(
          leading: const Icon(
            Icons.email,
            color: Colors.black,
          ),
          title: const Text('Email',
              style: TextStyle(color: Colors.black, fontSize: 15)),
          trailing:
              const Icon(Icons.arrow_forward, color: Colors.black, size: 15),
          onTap: () {
            bool canPop = Navigator.of(context).canPop();
            if (canPop == false) {
              Navigator.pop(context);
            } else {
              //show message as hint for user
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Can not go back')));
            }
          },
        ),
      ],
    ));
  }
}
