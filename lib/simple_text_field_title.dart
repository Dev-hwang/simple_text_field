import 'package:flutter/material.dart';

/// A widget that implements the title of [SimpleTextField].
class SimpleTextFieldTitle extends StatelessWidget {
  final String title;
  final TextStyle titleStyle;
  final TextStyle asterStyle;
  final EdgeInsetsGeometry padding;
  final bool important;

  SimpleTextFieldTitle({
    Key? key,
    required this.title,
    this.titleStyle = const TextStyle(fontSize: 18.0, color: const Color(0xFF333333)),
    this.asterStyle = const TextStyle(fontSize: 18.0, color: const Color(0xFFA565E4)),
    this.padding = const EdgeInsets.only(top: 16.0, bottom: 8.0),
    this.important = false
  })  : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: RichText(
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(text: title, style: titleStyle),
            (important)
                ? TextSpan(text: '\t*', style: asterStyle)
                : TextSpan(text: '')
          ],
        ),
      ),
    );
  }
}
