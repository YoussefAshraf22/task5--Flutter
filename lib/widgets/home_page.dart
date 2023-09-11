// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:task5/widgets/component_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.settings,
              color: Colors.white,
            ),
          )
        ],
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 35,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('person.png'),
                        radius: 33,
                      ),
                    ),
                    Positioned(
                      bottom: 5,
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 10,
                        child: CircleAvatar(
                          backgroundColor: Colors.green,
                          radius: 8,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Text(
                'User',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.message),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '0125549878',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(15)),
                child: const Text(
                  'Upgrade to pro',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              ComponentView()
            ]),
      ),
    ));
  }
}
