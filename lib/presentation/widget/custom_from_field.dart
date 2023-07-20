import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? type;
  final ValueChanged<String>? onSubmit;
  final ValueChanged<String>? onChange;
  final String? Function(String?) validator;
  final String? label;
  final String? text;
  final IconData? prefix;
  final IconData? suffix;
  final bool isPassword;
  final void Function()? suffixPress;
  final GestureTapCallback? onTap;


  const CustomTextField({
    key,
    this.controller,
    this.type,
    this.onSubmit,
    this.onChange,
    required this.validator,
    this.label,
    this.prefix,
    this.suffix,
    this.isPassword = false,
    this.suffixPress,
    required this.text, this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 1,
      child: TextFormField(
        controller: controller,
        keyboardType: type,
        onChanged: onChange,
        onFieldSubmitted: onSubmit,
        validator: validator,
        obscureText: isPassword,
        cursorColor: Colors.blue,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(0),
          labelText: label,
          hintText: text,
          filled: true,
          fillColor: Colors.blue,
          prefixIcon: Icon(
            prefix,
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Colors.black54,
              )
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.blue)),
          suffixIcon: suffix != null? IconButton(
            onPressed: suffixPress,
            icon: Icon(
              suffix,
            ),
          )
              : null,
        ),
      ),
    );
  }
}