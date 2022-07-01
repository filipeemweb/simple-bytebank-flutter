import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final TextEditingController? controller;
  final String? labelText;
  final String? hintText;
  final IconData? icon;

  const CustomInput({
    this.controller,
    this.labelText,
    this.hintText,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        style: const TextStyle(
          fontSize: 16.0,
        ),
        decoration: InputDecoration(
          icon: icon != null ? Icon(icon) : null,
          labelText: labelText,
          hintText: hintText,
        ),
        keyboardType: TextInputType.number,
        controller: controller,
      ),
    );
  }
}
