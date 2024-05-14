import 'package:flutter/material.dart';
import 'package:fluttertokners/app.dart';
import 'package:fluttertokners/src/presentation/ui/widget/onboarding/footer.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SupplyContainer extends StatefulWidget {
  final SizingInformation sizingInformation;

  const SupplyContainer({Key? key, required this.sizingInformation})
      : super(key: key);

  @override
  State<SupplyContainer> createState() => _SupplyContainerState();
}

class _SupplyContainerState extends State<SupplyContainer> {
  int currentPage = 0;
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final isMobile = widget.sizingInformation.isMobile;
    final isTablet = widget.sizingInformation.isTablet;
    final isSmallTab = widget.sizingInformation.localWidgetSize.width <
        const RefinedBreakpoints().tabletExtraLarge + 130;

    return isSmallTab || isMobile || isTablet
        ? _buildMobileContainer(context)
        : _buildDesktopContainer(context);
  }

  Widget _buildDesktopContainer(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            SizedBox(
              height: 1300,
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
                  Stack(
                    children: [
                      Assets.images.background.bgPresale.image(),

                      Positioned(
                        right: 100,
                        top: 100,
                        child: Container(
                          height: 349,
                          width: 800,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(24), // Adjust the radius as needed
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 100,vertical: 45),
                          child: Column(
                            children: [
                              Text(
                                LanguageTranslation.current.proposal,
                                style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: FontFamily.centuryGothic,
                                    color: Color(0xFF0F1320)
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 20,),

                              Text(
                                '10,000,000,000',
                                style: TextStyle(
                                    fontSize: 80,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: FontFamily.centuryGothic,
                                    color: Color(0xFF19A255)
                                ),
                              ),
                              Text(
                                'Tokens',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: FontFamily.centuryGothic,
                                    color: Color(0xFF0F1320)
                                ),
                                textAlign: TextAlign.right,
                              ),
                            ],
                          ),

                        ),
                      ),
                      Positioned(
                        left: 100,
                        bottom: 100,
                        child: Container(
                          height: 349,
                          width: 800,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(24), // Adjust the radius as needed
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 100,vertical: 45),
                          child: Column(
                            children: [
                              Text(
                                LanguageTranslation.current.supply_at_gen,
                                style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: FontFamily.centuryGothic,
                                    color: Color(0xFF0F1320)
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 20,),

                              Text(
                                '3,000,000,000',
                                style: TextStyle(
                                    fontSize: 80,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: FontFamily.centuryGothic,
                                    color: Color(0xFFFFD100)
                                ),
                              ),
                              Text(
                                'Tokens',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: FontFamily.centuryGothic,
                                    color: Color(0xFF0F1320)
                                ),
                                textAlign: TextAlign.right,
                              ),
                              SizedBox(height: 20,),
                              Text(
                                LanguageTranslation.current.from_the_gen,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: FontFamily.centuryGothic,
                                    color: Color(0xFF000000).withOpacity(0.6)
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),

                        ),
                      ),


                    ],
                  ),
                  DesktopFooter()


                ],
              ),
            ),
          ],
        )

      ],
    );
  }

  Widget _buildMobileContainer(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Assets.images.background.bgMobilePresale.image(
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fitWidth
            ),

            Positioned(
              right: 20,
              left: 20,
              top: 160,
              child: Container(
                height: 246,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24), // Adjust the radius as needed
                ),
                padding: EdgeInsets.symmetric(horizontal: 25,vertical: 30),
                child: Column(
                  children: [
                    Text(
                      LanguageTranslation.current.proposal,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          fontFamily: FontFamily.centuryGothic,
                          color: Color(0xFF0F1320)
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20,),

                    Text(
                      '10,000,000,000',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w700,
                          fontFamily: FontFamily.centuryGothic,
                          color: Color(0xFF19A255)
                      ),
                    ),
                    Text(
                      'Tokens',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          fontFamily: FontFamily.centuryGothic,
                          color: Color(0xFF0F1320)
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),

              ),
            ),
            Positioned(
              left: 20,
              right: 20,
              bottom: 160,
              child: Container(
                height: 256,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24), // Adjust the radius as needed
                ),
                padding: EdgeInsets.symmetric(horizontal: 25,vertical: 30),
                child: Column(
                  children: [
                    Text(
                      LanguageTranslation.current.supply_at_gen,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          fontFamily: FontFamily.centuryGothic,
                          color: Color(0xFF0F1320)
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20,),

                    Text(
                      '3,000,000,000',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w700,
                          fontFamily: FontFamily.centuryGothic,
                          color: Color(0xFFFFD100)
                      ),
                    ),
                    Text(
                      'Tokens',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          fontFamily: FontFamily.centuryGothic,
                          color: Color(0xFF0F1320)
                      ),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(height: 20,),
                    Text(
                      LanguageTranslation.current.from_the_gen,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontFamily: FontFamily.centuryGothic,
                          color: Color(0xFF000000).withOpacity(0.6)
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),

              ),
            ),


          ],
        ),
        MobileFooter()
      ],
    );
  }
}

