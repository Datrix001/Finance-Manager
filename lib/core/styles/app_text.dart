import 'package:easy_localization/easy_localization.dart';
import 'package:finwise/core/styles/app_text_style.dart';
import 'package:flutter/material.dart';

Widget appTextH1(
  String text, {
  Color? color,
  TextAlign? textAlign,
  TextDecoration? decoration,
  TextOverflow? overflow,
  int? maxLines,
  FontStyle? fontStyle,
}) => Text(
  text.tr(),
  textAlign: textAlign,
  style: AppTextStyles.h1.copyWith(
    color: color,
    decoration: decoration,
    overflow: overflow,
    fontStyle: fontStyle,
  ),
  maxLines: maxLines,
);

Widget appTextH2(
  String text, {
  Color? color,
  TextAlign? textAlign,
  TextDecoration? textDecoration,
  TextOverflow? textOverflow,
  int? maxLines,
  FontStyle? fontStyle,
}) => Text(
  text.tr(),
  textAlign: textAlign,
  style: AppTextStyles.h2.copyWith(
    color: color,
    decoration: textDecoration,
    overflow: textOverflow,
    fontStyle: fontStyle,
  ),
  maxLines: maxLines,
);

Widget appTextH3(
  String text, {
  Color? color,
  TextAlign? textAlign,
  TextDecoration? textDecoration,
  TextOverflow? textOverflow,
  int? maxLines,
  FontStyle? fontStyle,
}) => Text(
  text.tr(),
  textAlign: textAlign,
  style: AppTextStyles.h3.copyWith(
    color: color,
    decoration: textDecoration,
    overflow: textOverflow,
    fontStyle: fontStyle,
  ),
  maxLines: maxLines,
);

Widget appTextS1(
  String text, {
  Color? color,
  TextAlign? textAlign,
  TextDecoration? textDecoration,
  TextOverflow? textOverflow,
  int? maxLines,
  FontStyle? fontStyle,
}) => Text(
  text.tr(),
  textAlign: textAlign,
  style: AppTextStyles.s1.copyWith(
    color: color,
    decoration: textDecoration,
    overflow: textOverflow,
    fontStyle: fontStyle,
  ),
  maxLines: maxLines,
);

Widget appTextS2(
  String text, {
  Color? color,
  TextAlign? textAlign,
  TextDecoration? textDecoration,
  TextOverflow? textOverflow,
  int? maxLines,
  FontStyle? fontStyle,
}) => Text(
  text.tr(),
  textAlign: textAlign,
  style: AppTextStyles.s2.copyWith(
    color: color,
    decoration: textDecoration,
    overflow: textOverflow,
    fontStyle: fontStyle,
  ),
  maxLines: maxLines,
);

Widget appTextS3(
  String text, {
  Color? color,
  TextAlign? textAlign,
  TextDecoration? textDecoration,
  TextOverflow? textOverflow,
  int? maxLines,
  FontStyle? fontStyle,
}) => Text(
  text.tr(),
  textAlign: textAlign,
  style: AppTextStyles.s3.copyWith(
    color: color,
    decoration: textDecoration,
    overflow: textOverflow,
    fontStyle: fontStyle,
  ),
  maxLines: maxLines,
);

Widget appTextS4(
  String text, {
  Color? color,
  TextAlign? textAlign,
  TextDecoration? textDecoration,
  TextOverflow? textOverflow,
  int? maxLines,
  FontStyle? fontStyle,
}) => Text(
  text.tr(),
  textAlign: textAlign,
  style: AppTextStyles.s4.copyWith(
    color: color,
    decoration: textDecoration,
    overflow: textOverflow,
    fontStyle: fontStyle,
  ),
  maxLines: maxLines,
);

Widget appTextB1(
  String text, {
  Color? color,
  TextAlign? textAlign,
  TextDecoration? textDecoration,
  TextOverflow? textOverflow,
  int? maxLines,
  FontStyle? fontStyle,
}) => Text(
  text.tr(),
  textAlign: textAlign,
  style: AppTextStyles.b1.copyWith(
    color: color,
    decoration: textDecoration,
    overflow: textOverflow,
    fontStyle: fontStyle,
  ),
  maxLines: maxLines,
);

Widget appTextB2(
  String text, {
  Color? color,
  TextAlign? textAlign,
  TextDecoration? textDecoration,
  TextOverflow? textOverflow,
  int? maxLines,
  FontStyle? fontStyle,
}) => Text(
  text.tr(),
  textAlign: textAlign,
  style: AppTextStyles.b2.copyWith(
    color: color,
    decoration: textDecoration,
    overflow: textOverflow,
    fontStyle: fontStyle,
  ),
  maxLines: maxLines,
);
