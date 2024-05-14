import 'package:flutter/material.dart';
import 'package:fluttertokners/app.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PresaleContainer extends StatefulWidget {
  final SizingInformation sizingInformation;

  const PresaleContainer({Key? key, required this.sizingInformation})
      : super(key: key);

  @override
  State<PresaleContainer> createState() => _PresaleContainerState();
}

class _PresaleContainerState extends State<PresaleContainer> {
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
    return Stack(
      children: [
        Assets.images.background.bgPresale.image(),

        Positioned(
          top: 200,
          left: 100,
          right: 100,
          child: Container(
            height: 1000,
            child: Column(
              children: [
                Text(
                 LanguageTranslation.current.presale_details,
                  style: TextStyle(
                    fontSize: 48,
                    fontFamily: FontFamily.centuryGothic,
                    fontWeight: FontWeight.w700,
                    color: Colors.white

                  ),
                ),
                Row(
                  children: [
                    Expanded(
                        child: _buildPhaseContainer(
                            '01',
                            'Phase One',
                            Assets.images.icons.icGreenDrop.svg())
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 100),
                        child: _buildPhaseContainer(
                            '02',
                            'Phase Two',
                            Assets.images.icons.icBlueDrop.svg()),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                        child: _buildPhaseContainer(
                            '03',
                            'Phase Three',
                            Assets.images.icons.icYellowDrop.svg())
                    ),
                  ],
                ),

              ],
            ),
          )
        ),


      ],
    );
  }

  Widget _buildMobileContainer(BuildContext context) {
    return Stack(
      children: [
        Assets.images.background.bgMobilePresale.image(
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.fitWidth
        ),

        Positioned(
            top: 150,
            left: 20,
            right: 20,
            child: Container(
              child: Column(
                children: [
                  Text(
                    LanguageTranslation.current.presale_details,
                    style: TextStyle(
                        fontSize: 36,
                        fontFamily: FontFamily.centuryGothic,
                        fontWeight: FontWeight.w700,
                        color: Colors.white

                    ),
                  ),
                  SizedBox(height: 20,),
                  SizedBox(
                    height: 465,
                    child: PageView.builder(
                      controller: _pageController,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: _buildPhaseContainer(
                            '${index + 1}',
                            'Phase ${index + 1}',
                            _getPhaseIcon(index),
                          ),
                        );
                      },
                      onPageChanged: (int page) {
                        setState(() {
                          currentPage = page;
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
                    child: AnimatedSmoothIndicator(
                      activeIndex: currentPage,
                      count: 3,
                      effect: ExpandingDotsEffect(
                        dotWidth: 6,
                        dotHeight: 6,
                        spacing: 4,
                        dotColor: Colors.white,
                        activeDotColor: Colors.white,
                      ),
                    ),
                  ),


                ],
              ),
            )
        ),


      ],
    );
  }

  Widget _getPhaseIcon(int index) {
    switch (index) {
      case 0:
        return Assets.images.icons.icGreenDrop.svg();
      case 1:
        return Assets.images.icons.icBlueDrop.svg();
      case 2:
        return Assets.images.icons.icYellowDrop.svg();
      default:
        return Container();
    }
  }

  Widget _buildPhaseContainer(String number, String phaseTitle, Widget iconWidget) {
    return Container(
      padding: EdgeInsets.only(top: 30),
      height: 475,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Stack(
            children: [
              iconWidget,
              Positioned.fill(
                top: 30,
                left: 10,
                child: Text(
                  number,
                  style: TextStyle(
                    color: Color(0xFF0F1320),
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                    fontFamily: FontFamily.centuryGothic,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Text(
            phaseTitle,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              fontFamily: FontFamily.centuryGothic,
              color: Color(0xFF191B21),
            ),
          ),
          SizedBox(height: 9),
          Text(
            '0/04/2021 - 16/04/2021',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              fontFamily: FontFamily.centuryGothic,
              color: Color(0xFF191B21).withOpacity(0.8),
            ),
          ),
          SizedBox(height: 70),
          Text(
            '1 BNB = 100000 WNTR',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              fontFamily: FontFamily.centuryGothic,
              color: Color(0xFF191B21).withOpacity(0.8),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Soft cap: 5000 BNB',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              fontFamily: FontFamily.centuryGothic,
              color: Color(0xFF191B21).withOpacity(0.8),
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Hard cap: 10000 BNB',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              fontFamily: FontFamily.centuryGothic,
              color: Color(0xFF191B21).withOpacity(0.8),
            ),
          ),
        ],
      ),
    );
    // return Stack(
    //   children: [
    //     Assets.images.background.bg01.svg(),
    //     Positioned.fill(
    //       top: 30,
    //       left: 10,
    //       child: Container(
    //         padding: EdgeInsets.symmetric(horizontal: 85, vertical: 57),
    //         height: 475,
    //         decoration: BoxDecoration(
    //           borderRadius: BorderRadius.circular(25),
    //           color: Colors.white,
    //         ),
    //         child: Column(
    //           children: [
    //             Stack(
    //               children: [
    //                 iconWidget,
    //                 Positioned.fill(
    //                   top: 30,
    //                   left: 10,
    //                   child: Text(
    //                     number,
    //                     style: TextStyle(
    //                       color: Color(0xFF0F1320),
    //                       fontSize: 26,
    //                       fontWeight: FontWeight.w700,
    //                       fontFamily: FontFamily.centuryGothic,
    //                     ),
    //                     textAlign: TextAlign.center,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //             Text(
    //               phaseTitle,
    //               style: TextStyle(
    //                 fontSize: 24,
    //                 fontWeight: FontWeight.w700,
    //                 fontFamily: FontFamily.centuryGothic,
    //                 color: Color(0xFF191B21),
    //               ),
    //             ),
    //             SizedBox(height: 9),
    //             Text(
    //               '0/04/2021 - 16/04/2021',
    //               style: TextStyle(
    //                 fontSize: 12,
    //                 fontWeight: FontWeight.w700,
    //                 fontFamily: FontFamily.centuryGothic,
    //                 color: Color(0xFF191B21).withOpacity(0.8),
    //               ),
    //             ),
    //             SizedBox(height: 70),
    //             Text(
    //               '1 BNB = 100000 WNTR',
    //               style: TextStyle(
    //                 fontSize: 16,
    //                 fontWeight: FontWeight.w700,
    //                 fontFamily: FontFamily.centuryGothic,
    //                 color: Color(0xFF191B21).withOpacity(0.8),
    //               ),
    //             ),
    //             SizedBox(height: 20),
    //             Text(
    //               'Soft cap: 5000 BNB',
    //               style: TextStyle(
    //                 fontSize: 16,
    //                 fontWeight: FontWeight.w400,
    //                 fontFamily: FontFamily.centuryGothic,
    //                 color: Color(0xFF191B21).withOpacity(0.8),
    //               ),
    //             ),
    //             SizedBox(height: 10),
    //             Text(
    //               'Hard cap: 10000 BNB',
    //               style: TextStyle(
    //                 fontSize: 16,
    //                 fontWeight: FontWeight.w700,
    //                 fontFamily: FontFamily.centuryGothic,
    //                 color: Color(0xFF191B21).withOpacity(0.8),
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //     ),
    //   ],
    // );
  }
}

