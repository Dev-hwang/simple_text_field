This package provides the ability to implement OutlineTextField with simple settings.
It includes all the options provided by TextField, and also includes options to block white space and special characters.

[![pub package](https://img.shields.io/pub/v/simple_text_field.svg)](https://pub.dev/packages/simple_text_field)

## Getting started

To use this package, add `simple_text_field` as a [dependency in your pubspec.yaml file](https://flutter.io/platform-plugins/). For example:

```yaml
dependencies:
  simple_text_field: ^3.2.0
```

## How to use

To block `white space` and `special characters`, use the following:

```dart
SimpleTextField(
  allowWhiteSpace: false,
  allowSpecialCharacters: false,
),
```

Instead of writing repetitive InputBorder to implement border, errorBorder, focusedBorder, 
focusedErrorBorder, enabledBorder, and disabledBorder, easily create OutlineTextField using the `simpleBorder` option.

```dart
SimpleTextField(
  decoration: SimpleInputDecoration(
    simpleBorder: SimpleInputBorder(
      style: SimpleInputBorderStyle.outline,
      color: Colors.blueAccent,
      errorColor: Colors.redAccent,
      focusedColor: Colors.blue,
      focusedErrorColor: Colors.red,
      disabledColor: Colors.grey,
      width: 1.0,
      focusedWidth: 2.0,
      radius: BorderRadius.circular(8),
    ),
  ),
  allowWhiteSpace: false,
  allowSpecialCharacters: false,
),
```

## Support

If you find any bugs or issues while using the plugin, please register an issues on [GitHub](https://github.com/Dev-hwang/simple_text_field/issues). You can also contact us at <hwj930513@naver.com>.
