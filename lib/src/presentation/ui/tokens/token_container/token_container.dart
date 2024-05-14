import 'package:flutter/material.dart';
import 'package:fluttertokners/src/presentation/ui/tokens/token_container/component/year_container.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TokenContainer extends StatelessWidget {
  final SizingInformation sizingInformation;

  const TokenContainer({Key? key, required this.sizingInformation})
      : super(key: key);

  bool get isMobile => sizingInformation.isMobile;
  bool get isTablet => sizingInformation.isTablet;
  bool get isSmallTab =>
      sizingInformation.localWidgetSize.width <
          const RefinedBreakpoints().tabletExtraLarge + 130;

  @override
  Widget build(BuildContext context) {

    return isSmallTab || isMobile || isTablet
        ? _buildMobileContainer(context)
        : _buildDesktopContainer(context);
  }


  Widget _buildDesktopContainer(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      child: Wrap(
        alignment: WrapAlignment.center,
        children: [

          YearContainer(
            year: 'Year 1',
            dateRange: 'Day 1 - Day 90',
            tokenPerDay: '10M Tokens/Day',
            totalTokens: '(900M Tokens)',
            svgPath: 'assets/images/icons/ic_drop.svg',
            iconColor: Color(0xFF22A75D), // Example color
          ),
          YearContainer(
            year: 'Year 2',
            dateRange: 'Day 90 - Day 365',
            tokenPerDay: '5M Tokens/Day',
            totalTokens: '(1375M Tokens)',
            svgPath: 'assets/images/icons/ic_drop.svg',
            iconColor: Color(0xFFFFD100), // Example color
          ),
          YearContainer(
            year: 'Year 3',
            dateRange: 'Day 1 - Day 90',
            tokenPerDay: '4M Tokens/Day',
            totalTokens: '(1460M Tokens)',
            svgPath: 'assets/images/icons/ic_drop.svg',
            iconColor: Colors.green, // Example color
          ),
          YearContainer(
            year: 'Year 4',
            dateRange: 'Day 1 - Day 90',
            tokenPerDay: '3M Tokens/Day',
            totalTokens: '(1095M Tokens)',
            svgPath: 'assets/images/icons/ic_drop.svg',
            iconColor: Color(0xFFE20613), // Example color
          ),
          YearContainer(
            year: 'Year 5',
            dateRange: 'Day 1 - Day 90',
            tokenPerDay: '2M Tokens/Day',
            totalTokens: '(730M Tokens)',
            svgPath: 'assets/images/icons/ic_drop.svg',
            iconColor: Color(0xFF22A75D), // Example color
          ),
          YearContainer(
            year: 'Year 6',
            dateRange: 'Day 1 - Day 90',
            tokenPerDay: '1M Tokens/Day',
            totalTokens: '(365M Tokens)',
            svgPath: 'assets/images/icons/ic_drop.svg',
            iconColor: Color(0xFFFFD100), // Example color
          ),
          YearContainer(
            year: 'Year 7',
            dateRange: 'Day 1 - Day 90',
            tokenPerDay: '1M Tokens/Day',
            totalTokens: '(365M Tokens)',
            svgPath: 'assets/images/icons/ic_drop.svg',
            iconColor: Color(0xFF0F87CA), // Example color
          ),
          YearContainer(
            year: 'Year 8',
            dateRange: 'Day 1 - Day 90',
            tokenPerDay: '1M Tokens/Day',
            totalTokens: '(365M Tokens)',
            svgPath: 'assets/images/icons/ic_drop.svg',
            iconColor: Color(0xFFE20613), // Example color
          ),
          YearContainer(
            year: 'Year 9',
            dateRange: 'Day 1 - Day 90',
            tokenPerDay: '1M Tokens/Day',
            totalTokens: '(345M Tokens)',
            svgPath: 'assets/images/icons/ic_drop.svg',
            iconColor: Color(0xFF22A75D), // Example color
          ),







        ],
      ),
    );
  }


  Widget _buildMobileContainer(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 160, 0, 20),
      child: Wrap(
        alignment: WrapAlignment.center,
        children: [

          YearContainer(
            year: 'Year 1',
            dateRange: 'Day 1 - Day 90',
            tokenPerDay: '10M Tokens/Day',
            totalTokens: '(900M Tokens)',
            svgPath: 'assets/images/icons/ic_drop.svg',
            iconColor: Color(0xFF22A75D), // Example color
          ),
          YearContainer(
            year: 'Year 2',
            dateRange: 'Day 90 - Day 365',
            tokenPerDay: '5M Tokens/Day',
            totalTokens: '(1375M Tokens)',
            svgPath: 'assets/images/icons/ic_drop.svg',
            iconColor: Color(0xFFFFD100), // Example color
          ),
          YearContainer(
            year: 'Year 3',
            dateRange: 'Day 1 - Day 90',
            tokenPerDay: '4M Tokens/Day',
            totalTokens: '(1460M Tokens)',
            svgPath: 'assets/images/icons/ic_drop.svg',
            iconColor: Colors.green, // Example color
          ),
          YearContainer(
            year: 'Year 4',
            dateRange: 'Day 1 - Day 90',
            tokenPerDay: '3M Tokens/Day',
            totalTokens: '(1095M Tokens)',
            svgPath: 'assets/images/icons/ic_drop.svg',
            iconColor: Color(0xFFE20613), // Example color
          ),
          YearContainer(
            year: 'Year 5',
            dateRange: 'Day 1 - Day 90',
            tokenPerDay: '2M Tokens/Day',
            totalTokens: '(730M Tokens)',
            svgPath: 'assets/images/icons/ic_drop.svg',
            iconColor: Color(0xFF22A75D), // Example color
          ),
          YearContainer(
            year: 'Year 6',
            dateRange: 'Day 1 - Day 90',
            tokenPerDay: '1M Tokens/Day',
            totalTokens: '(365M Tokens)',
            svgPath: 'assets/images/icons/ic_drop.svg',
            iconColor: Color(0xFFFFD100), // Example color
          ),
          YearContainer(
            year: 'Year 7',
            dateRange: 'Day 1 - Day 90',
            tokenPerDay: '1M Tokens/Day',
            totalTokens: '(365M Tokens)',
            svgPath: 'assets/images/icons/ic_drop.svg',
            iconColor: Color(0xFF0F87CA), // Example color
          ),
          YearContainer(
            year: 'Year 8',
            dateRange: 'Day 1 - Day 90',
            tokenPerDay: '1M Tokens/Day',
            totalTokens: '(365M Tokens)',
            svgPath: 'assets/images/icons/ic_drop.svg',
            iconColor: Color(0xFFE20613), // Example color
          ),
          YearContainer(
            year: 'Year 9',
            dateRange: 'Day 1 - Day 90',
            tokenPerDay: '1M Tokens/Day',
            totalTokens: '(345M Tokens)',
            svgPath: 'assets/images/icons/ic_drop.svg',
            iconColor: Color(0xFF22A75D), // Example color
          ),







        ],
      ),
    );
  }




}
