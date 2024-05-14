import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttertokners/gen/assets.gen.dart';
import 'package:fluttertokners/gen/fonts.gen.dart';
import 'package:fluttertokners/generated/l10n.dart';
import 'package:fluttertokners/route/app_router.gr.dart';
import 'package:fluttertokners/src/presentation/ui/widget/onboarding/header.dart';
import 'package:fluttertokners/src/presentation/ui/widget/tokners_filled_button.dart';
import 'package:get_it/get_it.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatelessWidget {
  final SizingInformation sizingInformation;
  final AppRouter appRouter = GetIt.instance.get<AppRouter>();

  HomePage({Key? key, required this.sizingInformation}) : super(key: key);

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
            Container(
              padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          LanguageTranslation.current.all_tokens,
                          style: const TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            fontFamily: FontFamily.centuryGothic,
                            color: Color(0xFFFFD100),
                          ),
                        ),

                        const SizedBox(height: 8,),
                        Text(
                          LanguageTranslation.current.remaining,
                          style: const TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 38,
                            fontFamily: FontFamily.centuryGothic,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 20,),
                        Text(
                          LanguageTranslation.current.we_are_creating,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            fontFamily: FontFamily.centuryGothic,
                            color: const Color(0xFFDDE2FF).withOpacity(0.6),
                            height: 22 / 14,
                          ),
                        ),
                        const SizedBox(height: 40,),
                        SizedBox(
                          width: 147,
                          child: ToknersFilledButton(
                            'Learn More',
                            onPressed: () {
                              AutoRouter.of(context).push(TokensRoute());
                              //appRouter.push(const TokensRoute());
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Assets.images.background.bgPhone.image(width: 700),
                ],
              ),
            ),
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
            //MobileTopAppBar(),
            const SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    LanguageTranslation.current.all_tokens,
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      fontFamily: FontFamily.centuryGothic,
                      color: Color(0xFFFFD100),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    LanguageTranslation.current.remaining,
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 38,
                      fontFamily: FontFamily.centuryGothic,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    LanguageTranslation.current.we_are_creating,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      fontFamily: FontFamily.centuryGothic,
                      color: const Color(0xFFDDE2FF).withOpacity(0.6),
                      height: 22 / 14,
                    ),
                  ),

                  const SizedBox(height: 40),
                  SizedBox(
                    width: 147,
                    child: ToknersFilledButton(
                      'Learn More',
                      onPressed: () {
                        print("hi");
                        appRouter.push(TokensRoute());
                        //AutoRouter.of(context).push(TokensRoute());
                      },
                    ),
                  ),
                  const SizedBox(height: 20),


                ],
              ),
            ),
            SizedBox(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              child: MediaQuery
                  .of(context)
                  .size
                  .width < 520
                  ? Transform.scale(
                scale: 1.9,
                child: Assets.images.background.bgPhone.image(
                  fit: BoxFit.cover,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                ),
              )
                  : Assets.images.background.bgPhone.image(
                fit: BoxFit.cover,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
              ),
            ),
          ],
        ),

      ],
    );
  }
}
