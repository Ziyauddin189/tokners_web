import 'package:flutter/material.dart';
import 'package:fluttertokners/app.dart';
import 'package:fluttertokners/src/presentation/ui/widget/tokners_shadow_icon.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeContainer extends StatelessWidget {
  final SizingInformation sizingInformation;

  const HomeContainer({Key? key, required this.sizingInformation})
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
      child: Row(
        children: [
          Expanded(
            child: _buildContainer(
              iconPath: 'assets/images/icons/ic_crown.svg',
              iconColor: const Color(0xFF22A75D),
              title: 'Creators',
              description:
              'Creators can gain independence through a decentralised digital currency system that is dependent on growing and engaging with the community and also their star power. They own 10-15% of the total value of the tokens minted.',
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 200),
              child: _buildContainer(
                iconPath: 'assets/images/icons/ic_star.svg',
                iconColor: const Color(0xFF2278D4),
                title: 'Holders',
                description:
                'Holding social tokens allows the individual to gain access to benefits including unreleased content, private communities, direct access to celebrity, early- access to tickets and more as well as the ability to trade with other communities in order to gain access to more creator content with early token buyers being the biggest winners as the value of the token increases with more buyers.',
              ),
            ),
          ),
        ],
      ),
    );
  }


  Widget _buildMobileContainer(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 160, 20, 20),
      child: Column(
        children: [
          _buildContainer(
            iconPath: 'assets/images/icons/ic_crown.svg',
            iconColor: const Color(0xFF22A75D),
            title: 'Creators',
            description:
            'Creators can gain independence through a decentralised digital currency system that is dependent on growing and engaging with the community and also their star power. They own 10-15% of the total value of the tokens minted.',
          ),
          const SizedBox(height: 20),
          _buildContainer(
            iconPath: 'assets/images/icons/ic_star.svg',
            iconColor: const Color(0xFF2278D4),
            title: 'Holders',
            description:
            'Holding social tokens allows the individual to gain access to benefits including unreleased content, private communities, direct access to celebrity, early- access to tickets and more as well as the ability to trade with other communities in order to gain access to more creator content with early token buyers being the biggest winners as the value of the token increases with more buyers.',
          ),
        ],
      ),
    );
  }


  Widget _buildContainer({
    required String iconPath,
    required Color iconColor,
    required String title,
    required String description,
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: const Color(0xFF171B29),
      ),
      width: 777,
      height: isMobile?540 :450,
      padding: isMobile? const EdgeInsets.all(30) : const EdgeInsets.fromLTRB(70, 60, 70, 55),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ToknersShadowIcon(
            iconPath,
            color: iconColor,
          ),
          const SizedBox(height: 20),
          RichText(
            text: TextSpan(
              style:  TextStyle(
                fontSize: isMobile? 28 : 36,
                fontWeight: FontWeight.w700,
                fontFamily: FontFamily.centuryGothic,
              ),
              children: [
                const TextSpan(
                  text: 'For ',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  text: title,
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: iconColor,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Text(
            description,
            style: TextStyle(
              color: Colors.white.withOpacity(0.5),
              fontSize: isMobile? 16 : 12,
              fontWeight: FontWeight.w400,
              fontFamily: FontFamily.centuryGothic,
              height: 1.5,
            ),
          ),
          const Spacer(),
          Row(
            children: [
              Text(
                'Learn More',
                style: TextStyle(
                  color: iconColor,
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.w700,
                  fontFamily: FontFamily.centuryGothic,
                  fontSize: 14,
                ),
              ),
              const SizedBox(width: 6),
              iconColor == const Color(0xFF22A75D)
                  ? Assets.images.icons.icGreenArrow.svg()
                  : Assets.images.icons.icBlueArrow.svg(),
            ],
          ),
        ],
      ),
    );
  }

}
