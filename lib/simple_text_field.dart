library simple_text_field;

import 'dart:ui' as ui show BoxHeightStyle, BoxWidthStyle;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'simple_input_border.dart';
import 'simple_input_border_style.dart';
import 'simple_input_decoration.dart';

export 'simple_input_border.dart';
export 'simple_input_border_style.dart';
export 'simple_input_decoration.dart';

/// A Material Design simple text field.
class SimpleTextField extends StatelessWidget {
  const SimpleTextField({
    super.key,
    this.controller,
    this.focusNode,
    this.undoController,
    this.decoration = const InputDecoration(),
    this.keyboardType,
    this.textInputAction,
    this.textCapitalization = TextCapitalization.none,
    this.style,
    this.strutStyle,
    this.textAlign = TextAlign.start,
    this.textAlignVertical,
    this.textDirection,
    this.readOnly = false,
    @Deprecated(
      'Use `contextMenuBuilder` instead. '
      'This feature was deprecated after v3.3.0-0.5.pre.',
    )
    this.toolbarOptions,
    this.showCursor,
    this.autofocus = false,
    this.statesController,
    this.obscuringCharacter = '•',
    this.obscureText = false,
    this.autocorrect = true,
    this.smartDashesType,
    this.smartQuotesType,
    this.enableSuggestions = true,
    this.maxLines = 1,
    this.minLines,
    this.expands = false,
    this.maxLength,
    this.maxLengthEnforcement,
    this.onChanged,
    this.onEditingComplete,
    this.onSubmitted,
    this.onAppPrivateCommand,
    this.inputFormatters,
    this.enabled = true,
    this.ignorePointers,
    this.cursorWidth = 2.0,
    this.cursorHeight,
    this.cursorRadius,
    this.cursorOpacityAnimates,
    this.cursorColor,
    this.cursorErrorColor,
    this.selectionHeightStyle = ui.BoxHeightStyle.tight,
    this.selectionWidthStyle = ui.BoxWidthStyle.tight,
    this.keyboardAppearance,
    this.scrollPadding = const EdgeInsets.all(20.0),
    this.dragStartBehavior = DragStartBehavior.start,
    this.enableInteractiveSelection,
    this.selectionControls,
    this.onTap,
    this.onTapAlwaysCalled = false,
    this.onTapOutside,
    this.mouseCursor,
    this.buildCounter,
    this.scrollController,
    this.scrollPhysics,
    this.autofillHints = const <String>[],
    this.contentInsertionConfiguration,
    this.clipBehavior = Clip.hardEdge,
    this.restorationId,
    this.scribbleEnabled = true,
    this.enableIMEPersonalizedLearning = true,
    this.contextMenuBuilder = _defaultContextMenuBuilder,
    this.canRequestFocus = true,
    this.spellCheckConfiguration,
    this.magnifierConfiguration,
    this.allowWhiteSpace = true,
    this.allowSpecialCharacters = true,
  });

  final TextEditingController? controller;
  final FocusNode? focusNode;
  final UndoHistoryController? undoController;
  final InputDecoration decoration;
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
  final MaterialStatesController? statesController;
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
  final MaxLengthEnforcement? maxLengthEnforcement;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onEditingComplete;
  final ValueChanged<String>? onSubmitted;
  final AppPrivateCommandCallback? onAppPrivateCommand;
  final List<TextInputFormatter>? inputFormatters;
  final bool enabled;
  final bool? ignorePointers;
  final double cursorWidth;
  final double? cursorHeight;
  final Radius? cursorRadius;
  final bool? cursorOpacityAnimates;
  final Color? cursorColor;
  final Color? cursorErrorColor;
  final ui.BoxHeightStyle selectionHeightStyle;
  final ui.BoxWidthStyle selectionWidthStyle;
  final Brightness? keyboardAppearance;
  final EdgeInsets scrollPadding;
  final DragStartBehavior dragStartBehavior;
  final bool? enableInteractiveSelection;
  final TextSelectionControls? selectionControls;
  final GestureTapCallback? onTap;
  final bool onTapAlwaysCalled;
  final TapRegionCallback? onTapOutside;
  final MouseCursor? mouseCursor;
  final InputCounterWidgetBuilder? buildCounter;
  final ScrollController? scrollController;
  final ScrollPhysics? scrollPhysics;
  final Iterable<String> autofillHints;
  final ContentInsertionConfiguration? contentInsertionConfiguration;
  final Clip clipBehavior;
  final String? restorationId;
  final bool scribbleEnabled;
  final bool enableIMEPersonalizedLearning;
  final EditableTextContextMenuBuilder contextMenuBuilder;
  final bool canRequestFocus;
  final SpellCheckConfiguration? spellCheckConfiguration;
  final TextMagnifierConfiguration? magnifierConfiguration;

  /// Whether to allow input of white space. <br> Default value is `true`.
  final bool allowWhiteSpace;

  /// Whether to allow input of special characters. <br> Default value is `true`.
  final bool allowSpecialCharacters;

  static Widget _defaultContextMenuBuilder(
    BuildContext context,
    EditableTextState editableTextState,
  ) {
    return AdaptiveTextSelectionToolbar.editableText(
      editableTextState: editableTextState,
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      focusNode: focusNode,
      undoController: undoController,
      decoration: _makeInputDecoration(Theme.of(context)),
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
      statesController: statesController,
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
      maxLengthEnforcement: maxLengthEnforcement,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      onSubmitted: onSubmitted,
      onAppPrivateCommand: onAppPrivateCommand,
      inputFormatters: _makeInputFormatters(),
      enabled: enabled,
      ignorePointers: ignorePointers,
      cursorWidth: cursorWidth,
      cursorHeight: cursorHeight,
      cursorRadius: cursorRadius,
      cursorOpacityAnimates: cursorOpacityAnimates,
      cursorColor: cursorColor,
      cursorErrorColor: cursorErrorColor,
      selectionHeightStyle: selectionHeightStyle,
      selectionWidthStyle: selectionWidthStyle,
      keyboardAppearance: keyboardAppearance,
      scrollPadding: scrollPadding,
      dragStartBehavior: dragStartBehavior,
      enableInteractiveSelection: enableInteractiveSelection,
      selectionControls: selectionControls,
      onTap: onTap,
      onTapAlwaysCalled: onTapAlwaysCalled,
      onTapOutside: onTapOutside,
      mouseCursor: mouseCursor,
      buildCounter: buildCounter,
      scrollController: scrollController,
      scrollPhysics: scrollPhysics,
      autofillHints: autofillHints,
      contentInsertionConfiguration: contentInsertionConfiguration,
      clipBehavior: clipBehavior,
      restorationId: restorationId,
      scribbleEnabled: scribbleEnabled,
      enableIMEPersonalizedLearning: enableIMEPersonalizedLearning,
      contextMenuBuilder: contextMenuBuilder,
      canRequestFocus: canRequestFocus,
      spellCheckConfiguration: spellCheckConfiguration,
      magnifierConfiguration: magnifierConfiguration,
    );
  }

  InputDecoration _makeInputDecoration(ThemeData themeData) {
    final InputDecoration decoration = this.decoration;
    if (decoration is! SimpleInputDecoration) {
      return decoration;
    }

    final SimpleInputBorder? simpleBorder = decoration.simpleBorder;
    if (simpleBorder == null) {
      return decoration;
    }

    if (simpleBorder.style == SimpleInputBorderStyle.none) {
      return decoration.copyWith(
        border: InputBorder.none,
        errorBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        focusedErrorBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
      );
    } else {
      final bool isUnderlineStyle =
          simpleBorder.style == SimpleInputBorderStyle.underline;
      final InputBorder baseBorder = isUnderlineStyle
          ? UnderlineInputBorder(borderRadius: simpleBorder.radius)
          : OutlineInputBorder(borderRadius: simpleBorder.radius);
      final InputBorder baseFocusedBorder = (simpleBorder.focusedRadius != null)
          ? isUnderlineStyle
              ? UnderlineInputBorder(borderRadius: simpleBorder.focusedRadius!)
              : OutlineInputBorder(borderRadius: simpleBorder.focusedRadius!)
          : baseBorder;

      final BorderSide baseBorderSide = BorderSide(width: simpleBorder.width);
      final BorderSide baseFocusedBorderSide =
          BorderSide(width: simpleBorder.focusedWidth);

      final Color color = simpleBorder.color ?? themeData.colorScheme.primary;
      final Color errorColor =
          simpleBorder.errorColor ?? themeData.colorScheme.error;
      final Color focusedColor = simpleBorder.focusedColor ?? color;
      final Color focusedErrorColor =
          simpleBorder.focusedErrorColor ?? errorColor;
      final Color disabledColor =
          simpleBorder.disabledColor ?? themeData.disabledColor;

      return decoration.copyWith(
        errorBorder: baseBorder.copyWith(
          borderSide: baseBorderSide.copyWith(color: errorColor),
        ),
        focusedBorder: baseFocusedBorder.copyWith(
          borderSide: baseFocusedBorderSide.copyWith(color: focusedColor),
        ),
        focusedErrorBorder: baseFocusedBorder.copyWith(
          borderSide: baseFocusedBorderSide.copyWith(color: focusedErrorColor),
        ),
        enabledBorder: baseBorder.copyWith(
          borderSide: baseBorderSide.copyWith(color: color),
        ),
        disabledBorder: baseBorder.copyWith(
          borderSide: baseBorderSide.copyWith(color: disabledColor),
        ),
      );
    }
  }

  List<TextInputFormatter> _makeInputFormatters() {
    const String denyWhiteSpace = r"\s";
    const String denySpecialCharacters =
        r"[^ㄱ-ㅎ|ㅏ-ㅣ|가-힣\u318D\u119E\u11A2\u2022\u2025a\u00B7\uFE55\w\s]";

    return [
      if (inputFormatters != null) ...inputFormatters!,
      if (!allowWhiteSpace)
        FilteringTextInputFormatter.deny(RegExp(denyWhiteSpace)),
      if (!allowSpecialCharacters)
        FilteringTextInputFormatter.deny(RegExp(denySpecialCharacters)),
    ];
  }
}
