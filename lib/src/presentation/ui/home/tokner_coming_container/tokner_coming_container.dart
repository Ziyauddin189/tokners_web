import 'package:flutter/material.dart';
import 'package:fluttertokners/app.dart';
import 'package:fluttertokners/src/presentation/ui/widget/tokners_outline_button.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ToknerComingContainer extends StatefulWidget {
  final SizingInformation sizingInformation;

  const ToknerComingContainer({Key? key, required this.sizingInformation})
      : super(key: key);

  @override
  State<ToknerComingContainer> createState() => _ToknerComingContainerState();
}

class _ToknerComingContainerState extends State<ToknerComingContainer> {

  bool showDetails = false;

  void toggleDetails() {
    setState(() {
      showDetails = !showDetails;
    });
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
    return Padding(
      padding: const EdgeInsets.fromLTRB(100, 0,0, 0),
      child: Row(
        children: [
          Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Assets.images.icons.icLogo.svg(),
                      SizedBox(width: 8,),
                      Text(
                        LanguageTranslation.current.tokner_is_coming,
                        style: TextStyle(
                          fontSize: 48,
                          fontFamily: FontFamily.centuryGothic,
                          fontWeight: FontWeight.w700,
                          color: Colors.white
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: 30,),
                  Text(
                    LanguageTranslation.current.crypto,
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: FontFamily.centuryGothic,
                        fontWeight: FontWeight.w700,
                        color: Colors.white.withOpacity(0.6),
                        height: 1.5
                    ),
                  ),
                  Text(
                    LanguageTranslation.current.bitcoin,
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: FontFamily.centuryGothic,
                        fontWeight: FontWeight.w400,
                        color: Colors.white.withOpacity(0.6),
                        height: 1.5
                    ),
                  ),
                  Text(
                    LanguageTranslation.current.we_are_trying,
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: FontFamily.centuryGothic,
                        fontWeight: FontWeight.w400,
                        color: Colors.white.withOpacity(0.6),
                        height: 1.5
                    ),
                  ),
                  Text(
                    LanguageTranslation.current.a_new,
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: FontFamily.centuryGothic,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF9FA1A6),
                      height: 1.5
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "“ ",
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: FontFamily.centuryGothic,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFFFFD100),
                          ),
                        ),
                        TextSpan(
                          text: LanguageTranslation.current.personalities,
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: FontFamily.centuryGothic,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF9FA1A6),
                            fontStyle: FontStyle.italic,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Text(
                    LanguageTranslation.current.well,
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: FontFamily.centuryGothic,
                        fontWeight: FontWeight.w400,
                        color: Colors.white.withOpacity(0.6),
                      height: 1.5
                    ),
                  ),
                  Text(
                    LanguageTranslation.current.currency,
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: FontFamily.centuryGothic,
                        fontWeight: FontWeight.w400,
                        color: Colors.white.withOpacity(0.6),
                        height: 1.5
                    ),
                  ),
                  SizedBox(height: 20,),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      width: 147,
                      child: ToknersOutlineButton(
                         'Read More'
                      ),
                    ),
                  )
                ],
              )
          ),
          Expanded(
            child: Transform.scale(
              scale: 1.8,
              child: Assets.images.background.bgHand.image()
            ),
          ),
        ],
      ),
    );



  }

  Widget _buildMobileContainer(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0,20, 0),
      child: Container(
        height: showDetails?1500:900,
        child: Column(
          children: [
            Expanded(
              child: Transform.scale(
                  scale: 1,
                  child: Assets.images.background.bgHand.image()
              ),
            ),
            Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Assets.images.icons.icLogo.svg(),
                    SizedBox(height: 10,),
                    Text(
                      LanguageTranslation.current.weentar_is_coming,
                      style: TextStyle(
                          fontSize: 36,
                          fontFamily: FontFamily.centuryGothic,
                          fontWeight: FontWeight.w700,
                          color: Colors.white
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 30,),
                Text(
                  LanguageTranslation.current.crypto,
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: FontFamily.centuryGothic,
                      fontWeight: FontWeight.w700,
                      color: Colors.white.withOpacity(0.6),
                      height: 1.5
                  ),
                ),
                Text(
                  LanguageTranslation.current.bitcoin,
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: FontFamily.centuryGothic,
                      fontWeight: FontWeight.w400,
                      color: Colors.white.withOpacity(0.6),
                      height: 1.5
                  ),
                ),

                if (showDetails) ...[
                  Text(
                    LanguageTranslation.current.we_are_trying,
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: FontFamily.centuryGothic,
                        fontWeight: FontWeight.w400,
                        color: Colors.white.withOpacity(0.6),
                        height: 1.5),
                  ),
                  Text(
                    LanguageTranslation.current.a_new,
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: FontFamily.centuryGothic,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF9FA1A6),
                        height: 1.5),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "“ ",
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: FontFamily.centuryGothic,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFFFFD100),
                          ),
                        ),
                        TextSpan(
                          text: LanguageTranslation.current.personalities,
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: FontFamily.centuryGothic,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF9FA1A6),
                            fontStyle: FontStyle.italic,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    LanguageTranslation.current.well,
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: FontFamily.centuryGothic,
                        fontWeight: FontWeight.w400,
                        color: Colors.white.withOpacity(0.6),
                        height: 1.5),
                  ),
                  Text(
                    LanguageTranslation.current.currency,
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: FontFamily.centuryGothic,
                        fontWeight: FontWeight.w400,
                        color: Colors.white.withOpacity(0.6),
                        height: 1.5),
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      width: 147,
                      child: ToknersOutlineButton(
                        'Hide',
                       onPressed: toggleDetails,

                      )
                    ),
                  ),
                ] else ...[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      width: 147,
                        child: ToknersOutlineButton(
                          'Read More',
                          onPressed: toggleDetails,

                        )
                    ),
                  ),
                ],
              ],
            )
          ],
        ),
      ),
    );
  }
}



