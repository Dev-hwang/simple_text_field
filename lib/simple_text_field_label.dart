import 'package:flutter/material.dart';

/// A widget that implements the label of [SimpleTextField].
class SimpleTextFieldLabel extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextStyle? asterStyle;
  final EdgeInsetsGeometry padding;
  final bool important;

  const SimpleTextFieldLabel(this.text, {
    Key? key,
    this.style,
    this.asterStyle,
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
            TextSpan(text: text, style: style
                ?? Theme.of(context).textTheme.subtitle1),
            (important)
                ? TextSpan(text: '\t*', style: asterStyle
                ?? Theme.of(context).textTheme.subtitle1?.copyWith(color: Theme.of(context).primaryColor))
                : TextSpan(text: '')
          ],
        ),
      ),
    );
  }
}
