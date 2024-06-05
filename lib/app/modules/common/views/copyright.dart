import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

List<Widget> buildCopyRight() {
  return [
    Expanded(
      child: Container(
        alignment: Alignment.center,
      ),
    ),
    RichText(
      text: TextSpan(children: [
        TextSpan(
            text: '© 2024 wcz0 Github',
            style: const TextStyle(color: Colors.grey, fontSize: 8),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                launchUrl(Uri.parse('https://github.com/wcz0/shop_flutter'));
              }),
      ]),
    ),
  ];
}
