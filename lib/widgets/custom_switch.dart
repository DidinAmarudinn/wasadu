import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:wasdu_mobile2/core/app_export.dart';

class CustomSwitch extends StatelessWidget {
  CustomSwitch({this.alignment, this.margin, this.value, this.onChanged});

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  bool? value;

  Function(bool)? onChanged;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildSwitchWidget(),
          )
        : _buildSwitchWidget();
  }

  _buildSwitchWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: FlutterSwitch(
        value: value ?? false,
        height: getHorizontalSize(24),
        width: getHorizontalSize(43),
        toggleSize: 20,
        borderRadius: getHorizontalSize(
          12.00,
        ),
        activeColor: ColorConstant.blue70033,
        activeToggleColor: ColorConstant.blue700,
        inactiveColor: ColorConstant.blue70033,
        inactiveToggleColor: ColorConstant.blue700,
        onToggle: (value) {
          onChanged!(value);
        },
      ),
    );
  }
}
