import 'package:flutter/material.dart';
import 'package:fluttertokners/generated/l10n.dart';
import 'package:fluttertokners/gen/fonts.gen.dart';

class ToknersColumnData extends StatelessWidget {
  final String title;
  final String value;
  final Color valueColor;
  final double titleFontSize;
  final double valueFontSize;

  const ToknersColumnData({
    Key? key,
    required this.title,
    required this.value,
    required this.valueColor,
    this.titleFontSize = 20,
    this.valueFontSize = 48,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: titleFontSize,
              fontFamily: FontFamily.centuryGothic,
              color: Colors.white,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: valueFontSize,
              fontFamily: FontFamily.centuryGothic,
              color: valueColor,
            ),
          ),
          Text(
            LanguageTranslation.current.tknrs_tok,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: titleFontSize, // Same as title font size
              fontFamily: FontFamily.centuryGothic,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
