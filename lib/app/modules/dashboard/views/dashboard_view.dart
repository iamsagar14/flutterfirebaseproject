import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
            child: Wrap(
          direction: Axis.horizontal,
          spacing: 8.0, // gap between adjacent chips
          runSpacing: 4.0, // gap between lines
          children: <Widget>[
            Chip(
              labelPadding: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              backgroundColor: Colors.blue,
              elevation: 3.0,
              avatar: CircleAvatar(
                  backgroundColor: Colors.blue.shade900,
                  child: const Text('EL')),
              label: const Text('Elon Musk'),
            ),
            Chip(
              avatar: CircleAvatar(
                  backgroundColor: Colors.blue.shade900,
                  child: const Text('BG')),
              label: const Text('Bill Gates'),
            ),
            Chip(
              avatar: CircleAvatar(
                  backgroundColor: Colors.blue.shade900,
                  child: const Text('MZ')),
              label: const Text('Mark Zuckerberg'),
            ),
            Chip(
              avatar: CircleAvatar(
                  backgroundColor: Colors.blue.shade900,
                  child: const Text('JB')),
              label: const Text('Jeff Bezos'),
            ),
            Chip(
              avatar: CircleAvatar(
                  backgroundColor: Colors.blue.shade900,
                  child: const Text('JB')),
              label: const Text('Jeff Bezos'),
            ),
            Chip(
              avatar: CircleAvatar(
                  backgroundColor: Colors.blue.shade900,
                  child: const Text('JB')),
              label: const Text('Jeff Bezos'),
            ),
            Chip(
              avatar: CircleAvatar(
                  backgroundColor: Colors.blue.shade900,
                  child: const Text('JB')),
              label: const Text('Jeff Bezos'),
            ),
          ],
        )),
      ),
    );
  }
}
