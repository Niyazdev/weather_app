import 'package:flutter/material.dart';
import 'package:whetherapp/utils/app_size_config.dart';

class CustomDivider extends StatelessWidget {
  final double thickness;
  final double margin;

  const CustomDivider({this.thickness = 0.05, this.margin = 4});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: thickness * AppSizeConfig.heightMultiplier,
      margin: EdgeInsets.symmetric(
        horizontal: margin * AppSizeConfig.heightMultiplier,
      ),
      color: Colors.grey,
    );
  }
}
