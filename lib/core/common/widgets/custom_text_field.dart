import 'package:flutter/material.dart';
import '../../utils/constants/app_colors.dart';
import '../../utils/constants/sizer.dart';
import '../styles/global_text_style.dart';

/// custom text field widget with consistent styling
/// Reusable text input component for forms
class CustomTextField extends StatefulWidget {
  /// Creates a custom text field with validation and styling
  /// [controller] - Text editing controller
  /// [labelText] - Label text displayed above the field
  /// [hintText] - Hint text displayed inside the field
  /// [validator] - Validation function
  /// [isPassword] - Whether field is for password input
  /// [keyboardType] - Type of keyboard to show
  /// [prefixIcon] - Icon displayed at the start of field
  /// [suffixIcon] - Icon displayed at the end of field
  /// [enabled] - Whether field is enabled for input
  /// [maxLines] - Maximum number of lines
  const CustomTextField({
    super.key,
    required this.controller,
    this.labelText,
    this.hintText,
    this.validator,
    this.isPassword = false,
    this.keyboardType,
    this.prefixIcon,
    this.suffixIcon,
    this.enabled = true,
    this.maxLines = 1,
  });

  final TextEditingController controller;
  final String? labelText;
  final String? hintText;
  final String? Function(String?)? validator;
  final bool isPassword;
  final TextInputType? keyboardType;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool enabled;
  final int maxLines;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _obscureText = true;
  bool _isFocused = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // label text
        if (widget.labelText != null) ...[
          Text(widget.labelText!, style: AppTextStyles.inputLabel),
          SizedBox(height: Sizer.xs),
        ],

        // text field
        Focus(
          onFocusChange: (hasFocus) {
            setState(() {
              _isFocused = hasFocus;
            });
          },
          child: TextFormField(
            controller: widget.controller,
            validator: widget.validator,
            obscureText: widget.isPassword ? _obscureText : false,
            keyboardType: widget.keyboardType,
            enabled: widget.enabled,
            maxLines: widget.maxLines,
            style: AppTextStyles.inputText,
            decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: AppTextStyles.inputHint,
              prefixIcon: widget.prefixIcon,
              suffixIcon: widget.isPassword
                  ? IconButton(
                      icon: Icon(
                        _obscureText
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                        color: AppColors.textHintColor,
                        size: Sizer.iconSize,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    )
                  : widget.suffixIcon,

              // border styling
              border: _buildBorder(AppColors.borderColor),
              enabledBorder: _buildBorder(AppColors.borderColor),
              focusedBorder: _buildBorder(AppColors.focusedBorderColor),
              errorBorder: _buildBorder(AppColors.errorColor),
              focusedErrorBorder: _buildBorder(AppColors.errorColor),
              disabledBorder: _buildBorder(
                AppColors.borderColor.withValues(alpha: 0.5),
              ),

              // padding and sizing
              contentPadding: EdgeInsets.symmetric(
                horizontal: Sizer.md,
                vertical: widget.maxLines > 1 ? Sizer.md : Sizer.sm,
              ),

              // filled styling
              filled: true,
              fillColor: widget.enabled
                  ? AppColors.surfaceColor
                  : AppColors.lightGreyColor,

              // error text styling
              errorStyle: AppTextStyles.errorText,
              errorMaxLines: 2,
            ),
          ),
        ),
      ],
    );
  }

  /// builds border for different states
  OutlineInputBorder _buildBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(Sizer.radiusMd),
      borderSide: BorderSide(color: color, width: _isFocused ? 2.0 : 1.0),
    );
  }
}
