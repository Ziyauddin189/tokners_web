import 'package:flutter/material.dart';
import 'package:fluttertokners/gen/assets.gen.dart';
import 'package:fluttertokners/gen/fonts.gen.dart';
import 'package:fluttertokners/generated/l10n.dart';
import 'package:fluttertokners/src/presentation/ui/widget/onboarding/footer.dart';
import 'package:responsive_builder/responsive_builder.dart';

class FooterContainer extends StatelessWidget {
  final SizingInformation sizingInformation;

  FooterContainer({Key? key, required this.sizingInformation}) : super(key: key);

  bool get isMobile => sizingInformation.isMobile;
  bool get isTablet => sizingInformation.isTablet;
  bool get isSmallTab =>
      sizingInformation.localWidgetSize.width <
          const RefinedBreakpoints().tabletExtraLarge + 130;


  @override
  Widget build(BuildContext context) {

    return  isSmallTab || isMobile || isTablet
        ? _buildMobileLayout(context)
        : _buildDesktopLayout(context);
  }



  Widget _buildDesktopLayout(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 1000,
          child: Assets.images.background.bgFooter.image(
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child:   Column(
            children: [
              _buildDesktopBuyContainer(context),
              SizedBox(height: 100,),
              DesktopFooter()


            ],
          ),
        ),
      ],
    );
  }


  Widget _buildMobileLayout(BuildContext context) {
    return Column(
      children: [
        _buildMobileBuyContainer(context),
        SizedBox(height: 100,),
        MobileFooter(),

      ],
    );
  }



  Widget _buildDesktopBuyContainer(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            children: [
              Text(
                LanguageTranslation.current.how_to_buy,
                style: TextStyle(
                  fontSize: 36,
                  fontFamily: FontFamily.centuryGothic,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFFF7F5F9),
                ),
              ),
              SizedBox(height: 50),

              Stack(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: _buildHowToBuyContainer('01', LanguageTranslation.current.first_connect),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 100),
                          child: _buildHowToBuyContainer('02', LanguageTranslation.current.then_send),
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: _buildHowToBuyContainer('03', LanguageTranslation.current.then_after),
                      ),
                    ],
                  ),
                  Positioned(
                    top: 170,
                    left: MediaQuery.of(context).size.width/3.2,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: SizedBox()),
                        _buildStepIcon(Assets.images.icons.icYellowRight.svg()),
                        Expanded(child: SizedBox()),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 170,
                    left: 0,
                    right: MediaQuery.of(context).size.width/3.2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: SizedBox()),
                        _buildStepIcon(Assets.images.icons.icGreenRight.svg()),
                        Expanded(child: SizedBox()),
                      ],
                    ),
                  ),
                ],
              ),


            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMobileBuyContainer(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Text(
                LanguageTranslation.current.how_to_buy,
                style: TextStyle(
                  fontSize: 36,
                  fontFamily: FontFamily.centuryGothic,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFFF7F5F9),
                ),
              ),
              SizedBox(height: 50),

              Stack(
                children: [
                  Container(
                    height:900,
                    child: Column(
                      children: [
                        Expanded(
                          child: _buildHowToBuyContainer('01', LanguageTranslation.current.first_connect),
                        ),
                        SizedBox(height: 10,),
                        Expanded(
                          child: _buildHowToBuyContainer('02', LanguageTranslation.current.then_send),
                        ),
                        SizedBox(height: 10,),
                        Expanded(
                          child: _buildHowToBuyContainer('03', LanguageTranslation.current.then_after),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 250,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: SizedBox()),
                        _buildStepIcon(
                            Transform.rotate(
                              angle: 3.14 / 2,
                              child: Assets.images.icons.icGreenRight.svg(),
                            )
                        ),
                        Expanded(child: SizedBox()),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 550,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: SizedBox()),
                        _buildStepIcon(
                            Transform.rotate(
                              angle: 3.14 / 2,
                              child: Assets.images.icons.icYellowRight.svg(),
                            )
                        ),
                        Expanded(child: SizedBox()),
                      ],
                    ),
                  ),
                ],
              ),


            ],
          ),
        ),
      ],
    );
  }

  Widget _buildStepIcon(Widget iconWidget) {
    return Stack(
      children: [
        Assets.images.icons.icBlackCircle.image(
            height: 86,
            width: 86
        ),
        Positioned(
          top: 28,
          left: 12,
          right: 8,
          child: iconWidget,
        ),
      ],
    );
  }



  Widget _buildHowToBuyContainer(String number, String text) {
    return Container(
      padding: EdgeInsets.fromLTRB(28, 30, 28, 0),
      height: isMobile? 216 : 270,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Color(0xFF171B29),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                number,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  fontFamily: FontFamily.centuryGothic,
                  color: Colors.white.withOpacity(0.3),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
            child: Text(
              text,
              style: TextStyle(
                fontSize: isMobile? 18 : 14,
                fontWeight: FontWeight.w700,
                fontFamily: FontFamily.centuryGothic,
                color: Colors.white,
                height: 1.5
              ),
            ),
          ),
        ],
      ),
    );
  }
}





