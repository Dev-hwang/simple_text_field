This package is a TextField that allows you to implement the OutlineInputBorder with simple settings. It includes all the options provided by the existing TextField, and additionally includes an option to block white space or special characters.

[![pub package](https://img.shields.io/pub/v/simple_text_field.svg)](https://pub.dev/packages/simple_text_field)

## Getting started

To use this package, add `simple_text_field` as a [dependency in your pubspec.yaml file](https://flutter.io/platform-plugins/). For example:

```yaml
dependencies:
  simple_text_field: ^2.1.0
```

## Package

* **SimpleTextField** - A widget that implements a `SimpleTextField`.
* **SimpleTextFieldLabel** - A widget that implements the label of `SimpleTextField`.
* **SimpleInputDecoration** - Creates a bundle of the border, labels, icons, and styles used to decorate a `SimpleTextField`.

### SimpleTextField (※ Show only added options)

| Parameter | Description |
|---|---|
| `decoration` | Used to decorate `SimpleTextField`. |
| `label` | Label can be created using `SimpleTextFieldLabel`. |
| `labelAlignment` | Set the alignment value of the `SimpleTextFieldLabel`. <br> Default value is `CrossAxisAlignment.start`. |
| `ignoreWhiteSpace` | Whether to ignore input of white space. <br> Default value is `false`. |
| `ignoreSpecialChar` | Whether to ignore input of special characters. <br> Default value is `false`. |

### SimpleTextFieldLabel

| Parameter | Description |
|---|---|
| `text` | Set the label text. |
| `style` | Specifies the style of the label text. <br> Default value is `Theme.of(context).textTheme.subtitle1`. |
| `asterStyle` | Specifies the style of the asterisk character. <br> Default value is `Theme.of(context).textTheme.subtitle1?.copyWith(color: Theme.of(context).primaryColor)`. |
| `padding` | Set the label padding. <br> Default value is `const EdgeInsets.only(top: 16.0, bottom: 8.0)`. |
| `important` | When set to true, an asterisk character appears. <br> Default value is `false`. |

### SimpleInputDecoration (※ Show only added options)

| Parameter | Description |
|---|---|
| `removeBorder` | Whether to remove the border of a `SimpleTextField`. <br> Default value is `false`. |
| `simpleBorder` | Whether to automatically create a `OutlineInputBorder`. <br> Default value is `false`. |
| `disabledColor`* | `fillColor` to display when a `SimpleTextField` is disabled. |
| `borderColor`* | The color of the border that will be shown to us in general. |
| `errorBorderColor`* | The color of the border to show when the `errorText` is not null. |
| `focusedBorderColor`* | The color of the focused border. |
| `focusedErrorBorderColor`* | The color of the focused error border. |
| `borderWidth`* | Set the width of the border. <br> Default value is `1.0`. |
| `focusedBorderWidth`* | Set the width of the focused border. <br> Default value is `2.0`. |
| `borderRadius`* | Set the radius of the border. <br> Default value is `const BorderRadius.all(Radius.circular(2.0))`. |

**Note:** The parameters marked with an asterisk(*) operate when `simpleBorder` is true.

## Support

If you find any bugs or issues while using the plugin, please register an issues on [GitHub](https://github.com/Dev-hwang/simple_text_field/issues). You can also contact us at <hwj930513@naver.com>.
