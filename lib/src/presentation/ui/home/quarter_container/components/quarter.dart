import 'package:flutter/material.dart';
import 'package:fluttertokners/gen/assets.gen.dart';
import 'package:fluttertokners/gen/fonts.gen.dart';

class MyWidget extends StatelessWidget {
  final String iconPath;
  final Color iconColor;
  final String title;
  final List<String> descriptions;

  const MyWidget({
    Key? key,
    required this.iconPath,
    required this.iconColor,
    required this.title,
    required this.descriptions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
      ),
      width: 375,
      height: 350,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Stack(
                children: [
                  Assets.images.icons.icGreenDrop.svg(color: iconColor),
                  Positioned.fill(
                    top: 30,
                    left: 10,
                    child: Text(
                      title,
                      style: TextStyle(
                        color: Color(0xFF0F1320),
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                        fontFamily: FontFamily.centuryGothic
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Assets.images.icons.icGreenCircle.svg(color: iconColor,height: 12, width: 12),
                  Text(
                    "2021",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontFamily: FontFamily.centuryGothic,
                    ),
                  )
                ],
              ),
            ],
          ),
          for (int i = 0; i < descriptions.length; i++)
            Row(
              children: [
                Text(
                  "${(i + 1).toString().padLeft(2, '0')}",
                  style: TextStyle(
                    color: iconColor.withOpacity(0.5),
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    fontFamily: FontFamily.centuryGothic,
                    height: 1.5,
                  ),
                ),
                SizedBox(width: 21),
                Expanded(
                  child: Text(
                    descriptions[i],
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                      fontSize: MediaQuery.of(context).size.width<430?18:12,
                      fontWeight: FontWeight.w400,
                      fontFamily: FontFamily.centuryGothic,
                      height: 1.9,
                    ),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
