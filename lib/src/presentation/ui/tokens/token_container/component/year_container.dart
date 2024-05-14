import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertokners/gen/fonts.gen.dart';

class YearContainer extends StatelessWidget {
  final String year;
  final String dateRange;
  final String tokenPerDay;
  final String totalTokens;
  final String svgPath;
  final Color iconColor;

  const YearContainer({
    Key? key,
    required this.year,
    required this.dateRange,
    required this.tokenPerDay,
    required this.totalTokens,
    required this.svgPath,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: const Color(0xFF171B29),
        ),
        width: 246,
        height: 175,
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 4),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              svgPath,
              color: iconColor,
            ),
            SizedBox(width: 10), // Adjust the width as needed for spacing
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  year,
                  style: TextStyle(
                    color:  iconColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    fontFamily: FontFamily.centuryGothic,
                    height: 1.5,
                  ),
                ),
                SizedBox(height: 6,),
                Text(
                  dateRange,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    fontFamily: FontFamily.centuryGothic,
                    height: 1.5,
                  ),
                ),
                SizedBox(height: 8,),
                Text(
                  tokenPerDay,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    fontFamily: FontFamily.centuryGothic,
                    height: 1.5,
                  ),
                ),
                SizedBox(height: 6,),
                Text(
                  totalTokens,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: FontFamily.centuryGothic,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
