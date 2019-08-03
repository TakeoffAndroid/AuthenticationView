import 'package:authentication_view/field_color.dart';
import 'package:authentication_view/field_type.dart';
import 'package:flutter/material.dart';

class TextFormFieldView extends StatelessWidget {

  TextEditingController textEditingController;
  FormFieldValidator formFieldValidator;
  FieldType fieldType;
  FieldStyle fieldStyle;
  TextInputAction textInputAction;

  TextFormFieldView({this.fieldType, this.textEditingController,
      this.formFieldValidator, this.fieldStyle, this.textInputAction});

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      textInputAction: textInputAction,
      controller: textEditingController,
      decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: fieldStyle.underlineDefaultColor)),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: fieldStyle.underlineFocusedColor)),
          hintStyle: TextStyle(color: fieldStyle.textColor),
          hintText: fieldType.hint),
      maxLength: fieldType.maxLength,
      validator: formFieldValidator,
      obscureText: fieldType.hideField,
    );
  }
}