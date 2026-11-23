import 'package:facebook/core/theme/app_colors.dart';
import 'package:facebook/core/theme/app_styles.dart';
import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  final String hintText;
  final String? Function(String?)? validator;
  const Input({super.key, this.hintText = "",this.validator});

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.lightGray,
        hint: Text(widget.hintText),
        focusedBorder: AppStyles.textFieldDefaultBorder,
        focusedErrorBorder: AppStyles.textFieldDefaultErorrBorder,
        disabledBorder: AppStyles.textFieldDefaultBorder,
        enabledBorder: AppStyles.textFieldDefaultBorder,
        errorBorder: AppStyles.textFieldDefaultErorrBorder,
        border: AppStyles.textFieldDefaultBorder
      ),
      validator: widget.validator,
    );
  }
}
