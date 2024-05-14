import 'package:flutter/material.dart';
import 'package:fluttertokners/gen/assets.gen.dart';
import 'package:fluttertokners/gen/fonts.gen.dart';
import 'package:fluttertokners/src/presentation/ui/widget/onboarding/footer.dart';
import 'package:fluttertokners/src/presentation/ui/widget/onboarding/header.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class TeamPage extends StatefulWidget {
  final SizingInformation sizingInformation;

  TeamPage({Key? key, required this.sizingInformation}) : super(key: key);

  @override
  State<TeamPage> createState() => _TeamPageState();
}

class _TeamPageState extends State<TeamPage> {
  int currentPage = 0;
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  List<Map<String, dynamic>> teamMembers = [
    {
      "name": "Brad pie",
      "role": "CEO and Co founder",
      "backgroundImage": 'assets/images/background/bg_team4.png',
    },
    {
      "name": "Lee Lee",
      "role": "CTO and Co founder",
      "backgroundImage": 'assets/images/background/bg_team3.png',
    },
    {
      "name": "Shan khan",
      "role": "Head of Development",
      "backgroundImage": 'assets/images/background/bg_team2.png',
    },
    {
      "name": "Shan Lopez",
      "role": "Head of marketing",
      "backgroundImage": 'assets/images/background/bg_team1.png',
    },
    {
      "name": "Lily",
      "role": "Community manager",
      "backgroundImage": 'assets/images/background/bg_team4.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final isMobile = widget.sizingInformation.isMobile;
    final isTablet = widget.sizingInformation.isTablet;
    final isSmallTab = widget.sizingInformation.localWidgetSize.width <
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
            Stack(
              children: [
                SizedBox(
                  height: 1200,
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
                      Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 100,top: 100),
                              child: Text(
                                'Our Team',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 36,
                                    fontFamily: FontFamily.centuryGothic,
                                    color: Colors.white

                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 40,),
                          Padding(
                            padding: const EdgeInsets.only(left: 100),
                            child: SizedBox(
                              height: 560,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: teamMembers.length,
                                itemBuilder: (context, index) {
                                  return SizedBox(
                                    width: 378,
                                    child : buildTeamMember(
                                        teamMembers[index]["name"],
                                        teamMembers[index]["role"],
                                        teamMembers[index]["backgroundImage"]
                                    ),


                                  );
                                },
                              ),
                            ),
                          ),

                        ],
                      ),

                      SizedBox(height: 100,),
                      DesktopFooter()


                    ],
                  ),
                ),
              ],
            ),




          ],
        ),

      ],
    );
  }

  Widget buildTeamMember(String name, String role, String backgroundImage) {
    return Container(
      height: 560,
      width: 378,
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
      decoration: BoxDecoration(
        color: Color(0xFF0D0B16),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              name,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                fontFamily: FontFamily.centuryGothic,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 10,),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              role,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontFamily: FontFamily.centuryGothic,
                color: Colors.white,
              ),
            ),
          ),
          Spacer(),
          Image.asset(backgroundImage),
        ],
      ),
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
            Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20,top: 20),
                    child: Text(
                      'Our Team',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 36,
                          fontFamily: FontFamily.centuryGothic,
                          color: Colors.white

                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: SizedBox(
                    height: 510,
                    child: PageView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: teamMembers.length,
                      itemBuilder: (context, index) {
                        return buildTeamMember(
                          teamMembers[index]["name"],
                          teamMembers[index]["role"],
                          teamMembers[index]["backgroundImage"],
                        );
                      },
                      onPageChanged: (int page) {
                        setState(() {
                          currentPage = page;
                        });
                      },
                    ),
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
                  child: AnimatedSmoothIndicator(
                    activeIndex: currentPage,
                    count: teamMembers.length,
                    effect: ExpandingDotsEffect(
                      dotWidth: 6,
                      dotHeight: 6,
                      spacing: 4,
                      dotColor: Colors.white,
                      activeDotColor: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 40,),
                MobileFooter()

              ],
            ),

          ],
        ),

      ],
    );
  }
}
