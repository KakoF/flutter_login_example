import 'package:flutter/material.dart';

class AppText  extends StatelessWidget {
  String title;
  String hint;
  bool obscure;
  TextEditingController controller;
  FormFieldValidator validator;
  TextInputType keyboardType;
  TextInputAction textInputAction;
  FocusNode focusNode;
  FocusNode nextFocus;

  AppText(this.title, this.hint, {this.obscure, this.controller, this.validator,
      this.keyboardType, this.textInputAction, this.focusNode, this.nextFocus});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: textInputAction,
      controller: controller,
      obscureText: obscure = false,
      validator: validator,
      keyboardType: keyboardType,
      focusNode: focusNode,
      onFieldSubmitted: (String text) {
        if(nextFocus != null){
          FocusScope.of(context).requestFocus(nextFocus);
        }
      },
      style: TextStyle(fontSize: 25, color: Colors.indigo),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16)
        ),
          labelStyle: TextStyle(color: Colors.grey, fontSize: 15),
          labelText: title,
          hintText: hint),
    );
  }
}
