import 'package:flutter/widgets.dart';

import 'simple_input_border_style.dart';

/// Defines the appearance of an [InputDecorator]'s border.
class SimpleInputBorder {
  const SimpleInputBorder({
    this.style = SimpleInputBorderStyle.underline,
    this.color,
    this.errorColor,
    this.focusedColor,
    this.focusedErrorColor,
    this.disabledColor,
    this.width = 1.0,
    this.focusedWidth = 2.0,
    this.radius = BorderRadius.zero,
    this.focusedRadius,
  });

  /// The border style of [SimpleTextField].
  final SimpleInputBorderStyle style;

  /// The color of the border.
  final Color? color;

  /// The error color of the border.
  final Color? errorColor;

  /// The color of the focused border.
  final Color? focusedColor;

  /// The error color of the focused border.
  final Color? focusedErrorColor;

  /// The disabled color of the border.
  final Color? disabledColor;

  /// The width of the border. <br> Default value is `1.0`.
  final double width;

  /// The width of the focused border. <br> Default value is `2.0`.
  final double focusedWidth;

  /// The radius of the border. <br> Default value is `BorderRadius.zero`.
  final BorderRadius radius;

  /// The radius of the focused border. <br> If this value is null, [radius] will be followed.
  final BorderRadius? focusedRadius;

  SimpleInputBorder copyWith({
    SimpleInputBorderStyle? style,
    Color? color,
    Color? errorColor,
    Color? focusedColor,
    Color? focusedErrorColor,
    Color? disabledColor,
    double? width,
    double? focusedWidth,
    BorderRadius? radius,
    BorderRadius? focusedRadius,
  }) =>
      SimpleInputBorder(
        style: style ?? this.style,
        color: color ?? this.color,
        errorColor: errorColor ?? this.errorColor,
        focusedColor: focusedColor ?? this.focusedColor,
        focusedErrorColor: focusedErrorColor ?? this.focusedErrorColor,
        disabledColor: disabledColor ?? this.disabledColor,
        width: width ?? this.width,
        focusedWidth: focusedWidth ?? this.focusedWidth,
        radius: radius ?? this.radius,
        focusedRadius: focusedRadius ?? this.focusedRadius,
      );
}
