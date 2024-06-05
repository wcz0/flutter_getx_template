import 'package:flutter/material.dart';

class ProfileRoute extends StatefulWidget {
  const ProfileRoute({super.key});

  @override
  State createState() => _ProfileRouteState();
}

class _ProfileRouteState extends State<ProfileRoute> {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              '我的',
            ),
          ],
        ),
      ),
    );
  }
}