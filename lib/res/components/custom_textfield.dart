import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String hint;
  final TextEditingController? textController;
  final Color textColor;
  final Color borderColor;

  const CustomTextField(
      {super.key,
      required this.hint,
      this.textController,
      this.textColor = Colors.black,
      this.borderColor = Colors.black});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: widget.borderColor)
        ),
        border: OutlineInputBorder(
          
        ),
        hintText: widget.hint,
        hintStyle: TextStyle(
          color: widget.textColor, 
        ),
       
      ),
    );
  }
}
