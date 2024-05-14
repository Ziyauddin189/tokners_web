import 'package:flutter/material.dart';
import 'package:fluttertokners/src/presentation/ui/home/quarter_container/components/quarter.dart';
import 'package:responsive_builder/responsive_builder.dart';

class QuarterContainer extends StatelessWidget {
  final SizingInformation sizingInformation;

  const QuarterContainer({Key? key, required this.sizingInformation})
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      child: Row(
        children: [
          Expanded(
            child: MyWidget(
              iconPath: 'assets/images/icons/ic_green_drop.svg',
              iconColor: Color(0xFF22A75D), // Example color
              title: 'Q1',
              descriptions: ['Team set-up', 'Launch of informational website'],
            ),
          ),
          Expanded(
            child: MyWidget(
              iconPath: 'assets/images/icons/ic_blue_drop.svg',
              iconColor: Color(0xFF2278D4), // Example color
              title: 'Q2',
              descriptions: [
                'Presale and exchange listings',
                'Blockchain development and launch',
                'Launch of our MVP',
                'Influencer agency partnerships',
                'Marketing and promotion ',
              ],
            ),
          ),
          Expanded(
            child: MyWidget(
              iconPath: 'assets/images/icons/ic_yellow_drop.svg',
              iconColor: Color(0xFFFFD100), // Example color
              title: 'Q3',
              descriptions: [
                'Celebrity, Creator and Influencer partnerships',
                'Expansion of creator communities on our platform',
                'More Marketing and promotion'
              ],
            ),
          ),
          Expanded(
            child: MyWidget(
              iconPath: 'assets/images/icons/ic_red_drop.svg',
              iconColor: Color(0xFFE20613), // Example color
              title: 'Q4',
              descriptions: [
                'Mainstream partnerships',
                '500 active creator communities',
                '2Million active community members',
                'More Marketing and promotion'
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildMobileContainer(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 70, 20, 20),
      child: Column(
        children: [
          MyWidget(
            iconPath: 'assets/images/icons/ic_green_drop.svg',
            iconColor: Colors.green, // Example color
            title: 'Q1',
            descriptions: ['Team set-up', 'Launch of informational website'],
          ),
          const SizedBox(width: 20),
          MyWidget(
            iconPath: 'assets/images/icons/ic_blue_drop.svg',
            iconColor: Color(0xFF2278D4), // Example color
            title: 'Q2',
            descriptions: [
              'Presale and exchange listings',
              'Blockchain development and launch',
              'Launch of our MVP',
              'Influencer agency partnerships',
              'Marketing and promotion ',
            ],
          ),
          MyWidget(
            iconPath: 'assets/images/icons/ic_yellow_drop.svg',
            iconColor: Color(0xFFFFD100), // Example color
            title: 'Q3',
            descriptions: [
              'Celebrity, Creator and Influencer partnerships',
              'Expansion of creator communities on our platform',
              'More Marketing and promotion'
            ],
          ),
          MyWidget(
            iconPath: 'assets/images/icons/ic_red_drop.svg',
            iconColor: Color(0xFFE20613), // Example color
            title: 'Q4',
            descriptions: [
              'Mainstream partnerships',
              '500 active creator communities',
              '2Million active community members',
              'More Marketing and promotion'
            ],
          ),
        ],
      ),
    );
  }
}
