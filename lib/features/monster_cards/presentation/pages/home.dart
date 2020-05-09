import 'package:flutter/material.dart';

import '../widgets/gradient_app_bar.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          GradientAppBar(title: "Monster Cards"),
        ],
      ),
    );
  }
}
