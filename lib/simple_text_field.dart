library simple_text_field;

export 'package:simple_text_field/simple_input_decoration.dart';
export 'package:simple_text_field/simple_text_field_label.dart';

import 'dart:ui' as ui show BoxHeightStyle, BoxWidthStyle;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:simple_text_field/simple_input_decoration.dart';
import 'package:simple_text_field/simple_text_field_label.dart';

/// A widget that implements a [SimpleTextField].
class SimpleTextField extends StatelessWidget {
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final SimpleInputDecoration decoration; // Redefine
  final SimpleTextFieldLabel? label; // New
  final CrossAxisAlignment labelAlignment; // New
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final TextCapitalization textCapitalization;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextAlign textAlign;
  final TextAlignVertical? textAlignVertical;
  final TextDirection? textDirection;
  final bool readOnly;
  final ToolbarOptions? toolbarOptions;
  final bool? showCursor;
  final bool autofocus;
  final String obscuringCharacter;
  final bool obscureText;
  final bool autocorrect;
  final SmartDashesType? smartDashesType;
  final SmartQuotesType? smartQuotesType;
  final bool enableSuggestions;
  final int maxLines;
  final int? minLines;
  final bool expands;
  final int? maxLength;
  // final bool maxLengthEnforced; // Deprecated
  final MaxLengthEnforcement? maxLengthEnforcement;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onEditingComplete;
  final ValueChanged<String>? onSubmitted;
  final AppPrivateCommandCallback? onAppPrivateCommand;
  final List<TextInputFormatter>? inputFormatters;
  final bool enabled;
  final double cursorWidth;
  final double? cursorHeight;
  final Radius? cursorRadius;
  final Color? cursorColor;
  final ui.BoxHeightStyle selectionHeightStyle;
  final ui.BoxWidthStyle selectionWidthStyle;
  final Brightness? keyboardAppearance;
  final EdgeInsets scrollPadding;
  final DragStartBehavior dragStartBehavior;
  final bool enableInteractiveSelection;
  final TextSelectionControls? selectionControls;
  final GestureTapCallback? onTap;
  final MouseCursor? mouseCursor;
  final InputCounterWidgetBuilder? buildCounter;
  final ScrollController? scrollController;
  final ScrollPhysics? scrollPhysics;
  final Iterable<String>? autofillHints;
  final String? restorationId;
  final bool enableIMEPersonalizedLearning;
  final bool ignoreWhiteSpace; // New
  final bool ignoreSpecialChar; // New

  const SimpleTextField({
    Key? key,
    this.controller,
    this.focusNode,
    this.decoration = const SimpleInputDecoration(),
    this.label,
    this.labelAlignment = CrossAxisAlignment.start,
    this.keyboardType,
    this.textInputAction,
    this.textCapitalization = TextCapitalization.none,
    this.style,
    this.strutStyle,
    this.textAlign = TextAlign.start,
    this.textAlignVertical,
    this.textDirection,
    this.readOnly = false,
    this.toolbarOptions,
    this.showCursor,
    this.autofocus = false,
    this.obscuringCharacter = '•',
    this.obscureText = false,
    this.autocorrect = false,
    this.smartDashesType,
    this.smartQuotesType,
    this.enableSuggestions = true,
    this.maxLines = 1,
    this.minLines,
    this.expands = false,
    this.maxLength,
    // this.maxLengthEnforced = true,
    this.maxLengthEnforcement,
    this.onChanged,
    this.onEditingComplete,
    this.onSubmitted,
    this.onAppPrivateCommand,
    this.inputFormatters,
    this.enabled = true,
    this.cursorWidth = 2.0,
    this.cursorHeight,
    this.cursorRadius,
    this.cursorColor,
    this.selectionHeightStyle = ui.BoxHeightStyle.tight,
    this.selectionWidthStyle = ui.BoxWidthStyle.tight,
    this.keyboardAppearance,
    this.scrollPadding = const EdgeInsets.all(20.0),
    this.dragStartBehavior = DragStartBehavior.start,
    this.enableInteractiveSelection = true,
    this.selectionControls,
    this.onTap,
    this.mouseCursor,
    this.buildCounter,
    this.scrollController,
    this.scrollPhysics,
    this.autofillHints,
    this.restorationId,
    this.enableIMEPersonalizedLearning = true,
    this.ignoreWhiteSpace = false,
    this.ignoreSpecialChar = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget textField = TextField(
      controller: controller,
      focusNode: focusNode,
      decoration: _getInputDecoration(Theme.of(context)),
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      textCapitalization: textCapitalization,
      style: style,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textAlignVertical: textAlignVertical,
      textDirection: textDirection,
      readOnly: readOnly,
      toolbarOptions: toolbarOptions,
      showCursor: showCursor,
      autofocus: autofocus,
      obscuringCharacter: obscuringCharacter,
      obscureText: obscureText,
      autocorrect: autocorrect,
      smartDashesType: smartDashesType,
      smartQuotesType: smartQuotesType,
      enableSuggestions: enableSuggestions,
      maxLines: maxLines,
      minLines: minLines,
      expands: expands,
      maxLength: maxLength,
      // maxLengthEnforced: maxLengthEnforced,
      maxLengthEnforcement: maxLengthEnforcement,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      onSubmitted: onSubmitted,
      onAppPrivateCommand: onAppPrivateCommand,
      inputFormatters: _getInputFormatters(),
      enabled: enabled,
      cursorWidth: cursorWidth,
      cursorHeight: cursorHeight,
      cursorRadius: cursorRadius,
      cursorColor: cursorColor,
      selectionHeightStyle: selectionHeightStyle,
      selectionWidthStyle: selectionWidthStyle,
      keyboardAppearance: keyboardAppearance,
      scrollPadding: scrollPadding,
      dragStartBehavior: dragStartBehavior,
      enableInteractiveSelection: enableInteractiveSelection,
      selectionControls: selectionControls,
      onTap: onTap,
      mouseCursor: mouseCursor,
      buildCounter: buildCounter,
      scrollController: scrollController,
      scrollPhysics: scrollPhysics,
      autofillHints: autofillHints,
      restorationId: restorationId,
      enableIMEPersonalizedLearning: enableIMEPersonalizedLearning,
    );

    if (label != null) {
      textField = Column(
        crossAxisAlignment: labelAlignment,
        children: [
          label!,
          textField,
        ],
      );
    }

    return textField;
  }

  List<TextInputFormatter> _getInputFormatters() {
    final result = <TextInputFormatter>[];
    if (inputFormatters != null && inputFormatters!.isNotEmpty) {
      result.addAll(inputFormatters!);
    }
    if (ignoreWhiteSpace) {
      result.add(FilteringTextInputFormatter.deny(RegExp(r"[\s]")));
    }
    if (ignoreSpecialChar) {
      result.add(FilteringTextInputFormatter.deny(RegExp(
          r"[^ㄱ-ㅎ|ㅏ-ㅣ|가-힣\u318D\u119E\u11A2\u2022\u2025a\u00B7\uFE55\w\s]")));
    }

    return result;
  }

  InputDecoration _getInputDecoration(ThemeData themeData) {
    final defBorder = OutlineInputBorder(borderRadius: decoration.borderRadius);
    final defBorderSide = BorderSide(width: decoration.borderWidth);
    final defFocusedBorderSide =
        BorderSide(width: decoration.focusedBorderWidth);

    final borderColor = decoration.borderColor ??
        themeData.colorScheme.onSurface.withOpacity(0.38);
    final errorBorderColor =
        decoration.errorBorderColor ?? themeData.errorColor;

    final border = defBorder.copyWith(
        borderSide: defBorderSide.copyWith(color: borderColor));
    final errorBorder = defBorder.copyWith(
        borderSide: defBorderSide.copyWith(color: errorBorderColor));

    Color? focusedBorderColor = decoration.focusedBorderColor;
    if (focusedBorderColor == null) {
      if (themeData.brightness == Brightness.light) {
        focusedBorderColor = themeData.primaryColor;
      } else {
        focusedBorderColor = themeData.accentColor;
      }
    }
    final focusedErrorBorderColor =
        decoration.focusedErrorBorderColor ?? themeData.errorColor;

    final focusedBorder = defBorder.copyWith(
        borderSide: defFocusedBorderSide.copyWith(color: focusedBorderColor));
    final focusedErrorBorder = defBorder.copyWith(
        borderSide:
            defFocusedBorderSide.copyWith(color: focusedErrorBorderColor));

    EdgeInsetsGeometry? contentPadding = decoration.contentPadding;
    if (decoration.simpleBorder && contentPadding == null) {
      contentPadding = const EdgeInsets.symmetric(horizontal: 10.0);
    }

    final disabledColor = decoration.disabledColor ?? const Color(0x90DBDBDB);

    bool filled = decoration.filled;
    Color? fillColor = decoration.fillColor;
    if (decoration.simpleBorder && !filled && !enabled) {
      filled = true;
      fillColor = disabledColor;
    }

    return InputDecoration(
      icon: decoration.icon,
      label: decoration.label,
      labelText: decoration.labelText,
      labelStyle: decoration.labelStyle,
      floatingLabelStyle: decoration.floatingLabelStyle,
      helperText: decoration.helperText,
      helperStyle: decoration.helperStyle,
      helperMaxLines: decoration.helperMaxLines,
      hintText: decoration.hintText,
      hintStyle: decoration.hintStyle,
      hintTextDirection: decoration.hintTextDirection,
      hintMaxLines: decoration.hintMaxLines,
      errorText: decoration.errorText,
      errorStyle: decoration.errorStyle,
      errorMaxLines: decoration.errorMaxLines,
      // hasFloatingPlaceholder: decoration.hasFloatingPlaceholder,
      floatingLabelBehavior: decoration.floatingLabelBehavior,
      isCollapsed: decoration.isCollapsed,
      isDense: decoration.isDense,
      contentPadding: contentPadding,
      prefixIcon: decoration.prefixIcon,
      prefixIconConstraints: decoration.prefixIconConstraints,
      prefix: decoration.prefix,
      prefixText: decoration.prefixText,
      prefixStyle: decoration.prefixStyle,
      suffixIcon: decoration.suffixIcon,
      suffixIconConstraints: decoration.suffixIconConstraints,
      suffix: decoration.suffix,
      suffixText: decoration.suffixText,
      suffixStyle: decoration.suffixStyle,
      counter: decoration.counter,
      counterText: decoration.counterText,
      counterStyle: decoration.counterStyle,
      filled: filled,
      fillColor: fillColor,
      focusColor: decoration.focusColor,
      hoverColor: decoration.hoverColor,
      border: decoration.removeBorder
          ? InputBorder.none
          : decoration.simpleBorder
              ? border
              : decoration.border,
      errorBorder: decoration.removeBorder
          ? InputBorder.none
          : decoration.simpleBorder
              ? errorBorder
              : decoration.errorBorder,
      focusedBorder: decoration.removeBorder
          ? InputBorder.none
          : decoration.simpleBorder
              ? focusedBorder
              : decoration.focusedBorder,
      focusedErrorBorder: decoration.removeBorder
          ? InputBorder.none
          : decoration.simpleBorder
              ? focusedErrorBorder
              : decoration.focusedErrorBorder,
      enabledBorder: decoration.removeBorder
          ? InputBorder.none
          : decoration.simpleBorder
              ? border
              : decoration.enabledBorder,
      disabledBorder: decoration.removeBorder
          ? InputBorder.none
          : decoration.simpleBorder
              ? border
              : decoration.disabledBorder,
      semanticCounterText: decoration.semanticCounterText,
      alignLabelWithHint: decoration.alignLabelWithHint,
      constraints: decoration.constraints,
    );
  }
}
