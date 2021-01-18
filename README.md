This package is a TextField that allows you to implement the OutlineInputBorder with simple settings. It includes all the options provided by the existing TextField, and additionally includes an option to block white space or special characters.

## Getting started

To use this package, add `simple_text_field` as a [dependency in your pubspec.yaml file](https://flutter.io/platform-plugins/). For example:

```yaml
dependencies:
  simple_text_field: ^1.0.1
```

## Package composition

* [SimpleTextField] - A widget that implements a text field.
* [SimpleTextFieldTitle] - A widget that implements the text field title.
* [SimpleInputDecoration] - Class for decorating text field.

### SimpleTextField (※ Show only added options)

| Parameter | Description |
|---|---|
| `decoration` | Used to decorate `SimpleTextField`. |
| `title` | Title can be created using `SimpleTextFieldTitle`. |
| `titleAlignment` | Set the alignment value of the title widget. |
| `ignoreWhiteSpace` | Whether to ignore input of white space. |
| `ignoreSpecialChar` | Whether to ignore input of special characters. |

### SimpleTextFieldTitle

| Parameter | Description |
|---|---|
| `title` | Set the title text. |
| `titleStyle` | Specifies the style of the title text. |
| `asterStyle` | Specifies the style of the asterisk character. |
| `padding` | Set the title padding. |
| `important` | When set to true, an asterisk character appears. |

### SimpleInputDecoration (※ Show only added options)

| Parameter | Description |
|---|---|
| `removeBorder` | Whether to remove the border of a `SimpleTextField`. |
| `simpleBorder` | Whether to automatically create a `OutlineInputBorder`. |
| `disabledColor`* | `fillColor` to display when a `SimpleTextField` is disabled. |
| `borderColor`* | The color of the border that will be shown to us in general. |
| `errorBorderColor`* | The color of the border to show when the `errorText` is not null. |
| `focusedBorderColor`* | The color of the focused border. |
| `focusedErrorBorderColor`* | The color of the focused error border. |
| `borderWidth`* | Set the width of the border. |
| `focusedBorderWidth`* | Set the width of the focused border. |
| `borderRadius`* | Set the radius of the border. |

**Note:** The parameters marked with an asterisk(*) operate when `simpleBorder` is true.