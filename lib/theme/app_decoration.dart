import 'package:flutter/material.dart';
import 'package:wasdu_mobile2/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get fillGray900 => BoxDecoration(
        color: ColorConstant.gray900,
      );
  static BoxDecoration get fillGreen500 => BoxDecoration(
        color: ColorConstant.green500,
      );
  static BoxDecoration get txtOutlineBlack9001e => BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9001e,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              1,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9001e => BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9001e,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              1,
            ),
          ),
        ],
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get txtFillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get outlineBlueA701 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.blueA701,
          width: getHorizontalSize(
            2.00,
          ),
        ),
      );
  static BoxDecoration get txtFillBlack9000a => BoxDecoration(
        color: ColorConstant.black9000a,
      );
  static BoxDecoration get outlineBlack9003d => BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
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
          ),
        ],
      );
  static BoxDecoration get fillBlue700 => BoxDecoration(
        color: ColorConstant.blue700,
      );
  static BoxDecoration get txtFillGreen500 => BoxDecoration(
        color: ColorConstant.green500,
      );
  static BoxDecoration get fillBlack90060 => BoxDecoration(
        color: ColorConstant.black90060,
      );
  static BoxDecoration get txtFillBlue700 => BoxDecoration(
        color: ColorConstant.blue700,
      );
}

class BorderRadiusStyle {
  static BorderRadius txtCircleBorder16 = BorderRadius.circular(
    getHorizontalSize(
      16.00,
    ),
  );

  static BorderRadius roundedBorder12 = BorderRadius.circular(
    getHorizontalSize(
      12.00,
    ),
  );

  static BorderRadius roundedBorder4 = BorderRadius.circular(
    getHorizontalSize(
      4.00,
    ),
  );

  static BorderRadius txtCircleBorder10 = BorderRadius.circular(
    getHorizontalSize(
      10.00,
    ),
  );

  static BorderRadius circleBorder27 = BorderRadius.circular(
    getHorizontalSize(
      27.00,
    ),
  );
}
