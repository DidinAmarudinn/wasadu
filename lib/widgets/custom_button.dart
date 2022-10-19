import 'package:flutter/material.dart';
import 'package:wasdu_mobile2/core/app_export.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.onTap,
      this.width,
      this.margin,
      this.prefixWidget,
      this.suffixWidget,
      this.text});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  VoidCallback? onTap;

  double? width;

  EdgeInsetsGeometry? margin;

  Widget? prefixWidget;

  Widget? suffixWidget;

  String? text;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: getHorizontalSize(width ?? 0),
        margin: margin,
        padding: _setPadding(),
        decoration: _buildDecoration(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            prefixWidget ?? SizedBox(),
            Text(
              text ?? "",
              textAlign: TextAlign.center,
              style: _setFontStyle(),
            ),
            suffixWidget ?? SizedBox(),
          ],
        ),
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
      boxShadow: _setBoxShadow(),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll18:
        return getPadding(
          all: 18,
        );
      case ButtonPadding.PaddingAll15:
        return getPadding(
          all: 15,
        );
      default:
        return getPadding(
          all: 11,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.FillWhiteA700:
        return ColorConstant.whiteA700;
      case ButtonVariant.FillBlue700:
        return ColorConstant.blue700;
      case ButtonVariant.OutlineBlueA701:
        return ColorConstant.whiteA700;
      case ButtonVariant.OutlineBlack9003d:
        return ColorConstant.cyan700;
      case ButtonVariant.FillGray900:
        return ColorConstant.gray900;
      case ButtonVariant.OutlineBlack9006b:
        return null;
      default:
        return ColorConstant.blueA701;
    }
  }

  _setBorder() {
    switch (variant) {
      case ButtonVariant.OutlineBlueA701:
        return Border.all(
          color: ColorConstant.blueA701,
          width: getHorizontalSize(
            2.00,
          ),
        );
      case ButtonVariant.OutlineBlack9006b:
        return Border.all(
          color: ColorConstant.black9006b,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineBlack9003d_1:
      case ButtonVariant.FillWhiteA700:
      case ButtonVariant.FillBlue700:
      case ButtonVariant.OutlineBlack9003d:
      case ButtonVariant.FillGray900:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.CircleBorder27:
        return BorderRadius.circular(
          getHorizontalSize(
            27.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            4.00,
          ),
        );
    }
  }

  _setBoxShadow() {
    switch (variant) {
      case ButtonVariant.OutlineBlack9003d:
        return [
          BoxShadow(
            color: ColorConstant.black9003d,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              2,
            ),
          )
        ];
      case ButtonVariant.FillWhiteA700:
      case ButtonVariant.FillBlue700:
      case ButtonVariant.OutlineBlueA701:
      case ButtonVariant.OutlineBlack9006b:
      case ButtonVariant.FillGray900:
        return null;
      default:
        return [
          BoxShadow(
            color: ColorConstant.black9003d,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              2,
            ),
          )
        ];
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.RobotoMedium14:
        return TextStyle(
          color: ColorConstant.blueA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.RobotoMedium16:
        return TextStyle(
          color: ColorConstant.blueA701,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.RobotoRegular16:
        return TextStyle(
          color: ColorConstant.black900Dd,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder4,
  CircleBorder27,
}

enum ButtonPadding {
  PaddingAll11,
  PaddingAll18,
  PaddingAll15,
}

enum ButtonVariant {
  OutlineBlack9003d_1,
  FillWhiteA700,
  FillBlue700,
  OutlineBlueA701,
  OutlineBlack9003d,
  OutlineBlack9006b,
  FillGray900,
}

enum ButtonFontStyle {
  RobotoMedium14WhiteA700,
  RobotoMedium14,
  RobotoMedium16,
  RobotoRegular16,
}
