import 'package:flutter/material.dart';
import 'package:whetherapp/utils/app_size_config.dart';
import 'package:whetherapp/utils/app_theme.dart';

class CustomSearchTextField extends StatelessWidget {
  final String labelText;
  final TextEditingController textEditingController;
  final TextInputType textInputType;
  final IconData prefixIcon;
  final IconData suffixIcon;
  final Color borderColor;
  final Brightness keyboardAppearance;
  final bool obscureText;
  final TextCapitalization textCapitalization;
  final FocusNode focusNode;
  final bool autoFocus;
  final Function onIconPress;
  final int maxLength;
  final Function onChanged;

  const CustomSearchTextField({
    @required this.labelText,
    @required this.textEditingController,
    this.textInputType = TextInputType.text,
    this.prefixIcon,
    this.suffixIcon,
    this.borderColor = AppTheme.accentColor,
    this.keyboardAppearance,
    this.obscureText = false,
    this.textCapitalization = TextCapitalization.none,
    this.focusNode,
    this.autoFocus = false,
    this.onIconPress,
    this.maxLength = 128,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      keyboardType: textInputType,
      obscureText: obscureText,
      textCapitalization: textCapitalization,
      autofocus: autoFocus,
      maxLength: maxLength,
      onChanged: onChanged,
      decoration: InputDecoration(
        prefixIcon: prefixIcon != null
            ? Icon(
                prefixIcon,
                color: AppTheme.hintColor,
              )
            : null,
        hintText: labelText,
        hintStyle: Theme.of(context).textTheme.bodyText1.copyWith(
          color: AppTheme.hintColor,
          fontSize: 2 * AppSizeConfig.textMultiplier,
        ),
        //labelText: labelText,
        suffixIcon: suffixIcon != null
            ? IconButton(
                icon: Icon(
                  suffixIcon,
                ),
                onPressed: onIconPress,
              )
            : null,
        counterText: '',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
          borderSide: BorderSide(
            color: AppTheme.accentColor,
          ),
        ),
        contentPadding: EdgeInsets.zero,
      ),
      style: Theme.of(context).textTheme.bodyText1.copyWith(
            color: AppTheme.secondaryColor,
            fontSize: 2 * AppSizeConfig.textMultiplier,
          ),
    );
  }
}
