import 'package:flutter/material.dart';
import 'package:fluttertokners/app.dart';
import 'package:responsive_builder/responsive_builder.dart';

class DescriptionContainer extends StatelessWidget {
  final SizingInformation sizingInformation;

  const DescriptionContainer({Key? key, required this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMobile = sizingInformation.isMobile;
    final isTablet = sizingInformation.isTablet;
    final isSmallTab = sizingInformation.localWidgetSize.width <
        const RefinedBreakpoints().tabletExtraLarge + 130;

    return isSmallTab || isMobile || isTablet
        ? _buildMobileContainer(context)
        : _buildDesktopContainer(context);
  }


  Widget _buildDesktopContainer(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Assets.images.background.bgColorRectangle.svg()),
        Expanded(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Assets.images.background.bgRightRectangle.svg(height: 800),
              Positioned(
                right: 0,
                top: -300,
                bottom: 10,
                child: Assets.images.background.bgWeen.svg(height: 100),
              ),

              Positioned.fill(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(100, 100, 100, 100),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            LanguageTranslation.current.what_makes,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color(0xFF0F1320),
                              fontSize: 32,
                              fontFamily: FontFamily.centuryGothic,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            LanguageTranslation.current.we_would,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color(0xFF0F1320).withOpacity(0.6),
                              fontSize: 12,
                              fontFamily: FontFamily.centuryGothic,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          LanguageTranslation.current.there_are,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color(0xFF0F1320).withOpacity(0.6),
                            fontSize: 12,
                            fontFamily: FontFamily.centuryGothic,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );



  }


  Widget _buildMobileContainer(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Assets.images.background.bgMobileColorSvg.svg(width: MediaQuery.of(context).size.width),
          Stack(
            alignment: Alignment.center,
            children: [
              Transform(
                transform: Matrix4.identity()..scale(-1.0, 1.0),
                alignment: Alignment.center,
                child: Assets.images.background.bgRightRectangle.svg(
                  width: MediaQuery.of(context).size.width,
                  height: 550,
                  fit: BoxFit.fitHeight
                ),
              ),

              Positioned.fill(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 50, 20, 50),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          LanguageTranslation.current.what_makes,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color(0xFF0F1320),
                            fontSize: 36,
                            fontFamily: FontFamily.centuryGothic,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          LanguageTranslation.current.we_would,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color(0xFF0F1320).withOpacity(0.6),
                            fontSize: 12,
                            fontFamily: FontFamily.centuryGothic,
                            fontWeight: FontWeight.w700,
                            height: 1.5
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        LanguageTranslation.current.there_are,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color(0xFF0F1320).withOpacity(0.6),
                          fontSize: 14,
                          fontFamily: FontFamily.centuryGothic,
                          fontWeight: FontWeight.w400,
                          height: 1.5
                        ),
                      ),
                    ],
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
