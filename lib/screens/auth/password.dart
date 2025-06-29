import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  final TextEditingController controller;
  final String hint;

  const PasswordField({super.key, required this.controller,required this.hint});

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureTxt = true;

  void visibility(){
    setState(() {
      _obscureTxt =!_obscureTxt;
    });
  }
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: _obscureTxt,
      decoration: InputDecoration(
        labelText: widget.hint,
        border : OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        suffixIcon: IconButton(onPressed: visibility, icon: Icon(
          _obscureTxt? Icons.visibility_off : Icons.visibility
        ),
      ),
    ));
  }
}