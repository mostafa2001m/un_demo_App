import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:un_demo/core/utils/app_colors.dart';

class CustomTextStyles {
  static Text jobCardTitleText(String text,
      {double? size, TextAlign? textAlign, Color? color}) {
    return Text(text,
        textAlign: textAlign ?? TextAlign.center,
        style: GoogleFonts.dmSans(
          fontWeight: FontWeight.bold,
          fontSize: size ?? 17,
          color: color ?? AppColor.kPrimaryTextColor,
        ));
  }

  static Text jobCardSubTitleText(String text, {double? size}) {
    return Text(text,
        style: GoogleFonts.dmSans(
          fontWeight: FontWeight.bold,
          fontSize: size ?? 13,
          color: AppColor.kSecondaryTextColor,
        ));
  }

  static Text jobCardDescriptionText(String text,
      {double? size, TextAlign? textAlign}) {
    return Text(text,
        textAlign: textAlign,
        style: GoogleFonts.dmSans(
          fontWeight: FontWeight.bold,
          fontSize: size ?? 13,
          color: AppColor.kPrimaryTextColor,
        ));
  }
}
