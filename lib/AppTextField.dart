// ignore_for_file: prefer_const_constructors
import 'constants.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String hint;
  final TextEditingController controller;
  final Color baseColor;
  final Color borderColor;
  final Color errorColor;
  final TextInputType inputType;
  final bool obscureText;
  final Function? validator;
  final Function? onChanged;

  CustomTextField(
      {required this.hint,
        required this.controller,
        this.onChanged,
        this.baseColor = secondaryColor,
        this.borderColor = darkColor,
        this.errorColor = Colors.red,
        this.inputType = TextInputType.text,
        this.obscureText = false,
        this.validator});

  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  Color currentColor = Colors.purple;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.obscureText,
      onChanged: (text) {
        if (widget.onChanged != null) {
          widget.onChanged!(text);
        }
        setState(() {
          if (widget.validator != null &&
              ((!widget.validator!(text) || text.isEmpty))) {
            currentColor = widget.errorColor;
          } else {
            currentColor = widget.baseColor;
          }
        });
      },
      //keyboardType: widget.inputType,
      controller: widget.controller,
      decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide:
            const BorderSide(color: Color.fromRGBO(121, 131, 198, 1)),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide:
            const BorderSide(color: Color.fromRGBO(121, 131, 198, 1)),
          ),
          border: UnderlineInputBorder(
            borderSide:
            const BorderSide(color: Color.fromRGBO(121, 131, 198, 1)),
          ),
          labelText: widget.hint,
          hintText: widget.controller.text == '' ? widget.hint : ""),
    );
  }
}
