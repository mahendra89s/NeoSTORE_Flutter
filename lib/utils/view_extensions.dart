import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class CustomTextFormField extends StatefulWidget {
  final FocusNode focusNode;
  final TextEditingController textEditingController;
  final String hintText;
  final String lableText;
  final Icon icon;
  final String? Function(String?, String?) validator;
  final String? value2;
  final TextInputType? textInputType;

  const CustomTextFormField(
      {required this.focusNode,
      required this.textEditingController,
      required this.hintText,
      required this.lableText,
      required this.icon,
      required this.validator,
      @Default(TextInputType.name) this.textInputType,
      @Default("") this.value2});
  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        focusNode: widget.focusNode,
        controller: widget.textEditingController,
        style: const TextStyle(color: Colors.white),
        keyboardType: widget.textInputType,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10),
          prefixIcon: widget.icon,
          hintText: widget.hintText,
          hintStyle: TextStyle(
              color:
                  widget.focusNode.hasFocus ? Colors.white : Colors.transparent,
              fontWeight: FontWeight.w500),
          labelText: widget.lableText,
          errorStyle: const TextStyle(color: Colors.white),
          labelStyle:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0.0),
              borderSide: const BorderSide(color: Colors.white)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0.0),
              borderSide: const BorderSide(color: Colors.white)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0.0),
              borderSide: const BorderSide(color: Colors.white)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0.0),
              borderSide: const BorderSide(color: Colors.white)),
        ),
        validator: (value) {
          //validation
          widget.validator.call(value, widget.value2);
          return null;
        },
        onChanged: (value) => () {});
  }
}

/* class ViewExtensions {
  static Widget customTextFormField(
      {required TextEditingController textEditingController,
      required FocusNode focusNode,
      required String hintText,
      required String lableText,
      required Icon icon,
      required String? Function(String?, String?) validator,
      @Default("") String? value2}) {
    return TextFormField(
        focusNode: focusNode,
        controller: textEditingController,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10),
          prefixIcon: icon,
          hintText: hintText,
          hintStyle: TextStyle(
              color: focusNode.hasFocus ? Colors.white : Colors.transparent,
              fontWeight: FontWeight.w500),
          labelText: lableText,
          errorStyle: const TextStyle(color: Colors.white),
          labelStyle:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0.0),
              borderSide: const BorderSide(color: Colors.white)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0.0),
              borderSide: const BorderSide(color: Colors.white)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0.0),
              borderSide: const BorderSide(color: Colors.white)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0.0),
              borderSide: const BorderSide(color: Colors.white)),
        ),
        validator: (value) {
          //validation
          validator.call(value, value2);
          return null;
        },
        onChanged: (value) => () {});
  }
}
 */