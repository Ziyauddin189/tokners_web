import 'package:flutter/material.dart';
import 'package:fluttertokners/gen/assets.gen.dart';
import 'package:fluttertokners/gen/fonts.gen.dart';
import 'package:fluttertokners/generated/l10n.dart';
import 'package:fluttertokners/src/presentation/ui/tokens/tokens_page/components/tokners_column_data.dart';
import 'package:fluttertokners/src/presentation/ui/widget/onboarding/header.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TokensPage extends StatelessWidget {
  final SizingInformation sizingInformation;

  const TokensPage({Key? key, required this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMobile = sizingInformation.isMobile;
    final isTablet = sizingInformation.isTablet;
    final isSmallTab = sizingInformation.localWidgetSize.width <
        const RefinedBreakpoints().tabletExtraLarge + 130;

    return isSmallTab || isMobile || isTablet
        ? _buildMobileLayout(context)
        : _buildDesktopLayout(context);
  }


  Widget _buildDesktopLayout(BuildContext context) {
    return Stack(
      children: [
        Assets.images.background.bgGradientPng.image(
          fit: BoxFit.cover,
        ),
        Column(
          children: [
            DesktopTopAppBar(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80,vertical: 40),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      width: 400,
                      child: Text(
                        LanguageTranslation.current.tknrs,
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 28,
                            fontFamily: FontFamily.centuryGothic,
                            color: Colors.white

                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  ToknersColumnData(
                      title:  LanguageTranslation.current.tknrs_token,
                      value:  '10,000,000,000',
                      valueColor:  Color(0xFFFFD100),
                    valueFontSize: 96,
                    titleFontSize: 24,
                  ),
                  SizedBox(height: 28,),
                  Row(
                    children: [
                      ToknersColumnData(
                        title:  LanguageTranslation.current.premined_tokens,
                        value:   '3,000,000,000',
                        valueColor:   Color(0xFF2278D4),
                        valueFontSize: 48,
                        titleFontSize: 20,
                      ),
                      Expanded(
                        child: Assets.images.icons.icSemiCircle.image(
                          fit: BoxFit.cover,
                        ),
                      ),
                      ToknersColumnData(
                        title:   LanguageTranslation.current.daily_tkn,
                        value:   '7,000,000,000',
                        valueColor:  Color(0xFFE20613),
                        valueFontSize: 48,
                        titleFontSize: 20,
                      ),
                    ],
                  ),

                ],
              ),
            )

          ],
        ),

      ],
    );
  }


  Widget _buildMobileLayout(BuildContext context) {
    return Stack(
      children: [
        Assets.images.background.bgHome.image(
            fit: BoxFit.cover,
            width: MediaQuery
                .of(context)
                .size
                .width
        ),
        Column(
          children: [
            //if (kIsWeb) const MobileTopAppBar(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      width: 300,
                      child: Text(
                        LanguageTranslation.current.tknrs,
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 32,
                            fontFamily: FontFamily.centuryGothic,
                            color: Colors.white

                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: ToknersColumnData(
                      title:  LanguageTranslation.current.tknrs_token,
                      value:  '10,000,000,000',
                      valueColor:  Color(0xFFFFD100),
                      valueFontSize: 50,
                      titleFontSize: 16,
                    ),
                  ),
                  SizedBox(height: 28,),
                  Column(
                    children: [
                      Align(
                         alignment: Alignment.centerRight,
                        child: ToknersColumnData(
                          title:  LanguageTranslation.current.premined_tokens,
                          value:   '3,000,000,000',
                          valueColor:   Color(0xFF2278D4),
                          valueFontSize: 36,
                          titleFontSize: 14,
                        ),
                      ),
                      SizedBox(height: 24,),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: ToknersColumnData(
                          title:   LanguageTranslation.current.daily_tkn,
                          value:   '7,000,000,000',
                          valueColor:  Color(0xFFE20613),
                          valueFontSize: 36,
                          titleFontSize: 14,
                        ),
                      ),
                      SizedBox(height: 28,),
                      Assets.images.icons.icSemiCircle.image(
                        fit: BoxFit.fitWidth,
                      ),
                    ],
                  ),

                ],
              ),
            )

          ],
        ),

      ],
    );
  }
}
