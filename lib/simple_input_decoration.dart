import 'package:flutter/material.dart';

/// Creates a bundle of the border, labels, icons, and styles used to decorate a [SimpleTextField].
class SimpleInputDecoration {
  final Icon? icon;
  final String? labelText;
  final TextStyle? labelStyle;
  final String? helperText;
  final TextStyle? helperStyle;
  final int? helperMaxLines;
  final String? hintText;
  final TextStyle? hintStyle;
  final TextDirection? hintTextDirection;
  final int? hintMaxLines;
  final String? errorText;
  final TextStyle? errorStyle;
  final int? errorMaxLines;
  // final bool hasFloatingPlaceholder; // Deprecated
  final FloatingLabelBehavior? floatingLabelBehavior;
  final bool isCollapsed;
  final bool? isDense;
  final EdgeInsetsGeometry? contentPadding;
  final IconButton? prefixIcon;
  final BoxConstraints? prefixIconConstraints;
  final Widget? prefix;
  final String? prefixText;
  final TextStyle? prefixStyle;
  final IconButton? suffixIcon;
  final BoxConstraints? suffixIconConstraints;
  final Widget? suffix;
  final String? suffixText;
  final TextStyle? suffixStyle;
  final Widget? counter;
  final String? counterText;
  final TextStyle? counterStyle;
  final bool filled;
  final Color? fillColor;
  final Color? focusColor;
  final Color? hoverColor;
  final Color? disabledColor;  // New
  final InputBorder? border;
  final InputBorder? errorBorder;
  final InputBorder? focusedBorder;
  final InputBorder? focusedErrorBorder;
  final InputBorder? enabledBorder;
  final InputBorder? disabledBorder;
  final String? semanticCounterText;
  final bool? alignLabelWithHint;
  final bool removeBorder;  // New
  final bool simpleBorder;  // New
  final Color? borderColor;  // New
  final Color? errorBorderColor; // New
  final Color? focusedBorderColor; // New
  final Color? focusedErrorBorderColor; // New
  final double borderWidth; // New
  final double focusedBorderWidth;  // New
  final BorderRadius borderRadius;  // New

  const SimpleInputDecoration({
    this.icon,
    this.labelText,
    this.labelStyle,
    this.helperText,
    this.helperStyle,
    this.helperMaxLines,
    this.hintText,
    this.hintStyle,
    this.hintTextDirection,
    this.hintMaxLines,
    this.errorText,
    this.errorStyle,
    this.errorMaxLines,
    // this.hasFloatingPlaceholder = true,
    this.floatingLabelBehavior,
    this.isCollapsed = false,
    this.isDense,
    this.contentPadding,
    this.prefixIcon,
    this.prefixIconConstraints,
    this.prefix,
    this.prefixText,
    this.prefixStyle,
    this.suffixIcon,
    this.suffixIconConstraints,
    this.suffix,
    this.suffixText,
    this.suffixStyle,
    this.counter,
    this.counterText,
    this.counterStyle,
    this.filled = false,
    this.fillColor,
    this.focusColor,
    this.hoverColor,
    this.disabledColor,
    this.border,
    this.errorBorder,
    this.focusedBorder,
    this.focusedErrorBorder,
    this.enabledBorder,
    this.disabledBorder,
    this.semanticCounterText,
    this.alignLabelWithHint,
    this.removeBorder = false,
    this.simpleBorder = false,
    this.borderColor,
    this.errorBorderColor,
    this.focusedBorderColor,
    this.focusedErrorBorderColor,
    this.borderWidth = 1.0,
    this.focusedBorderWidth = 2.0,
    this.borderRadius = const BorderRadius.all(Radius.circular(4.0))
  })  : assert(borderWidth >= 0.0),
        assert(focusedBorderWidth >= 0.0);
}
