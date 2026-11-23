import 'package:facebook/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppStyles {
  static InputBorder textFieldDefaultBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(16.0),
    borderSide: BorderSide(color: AppColors.gray, width: 2.0),
  );
  static InputBorder textFieldDefaultErorrBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(16.0),
    borderSide: BorderSide(color: AppColors.erorr, width: 2.0),
    
  );
}
