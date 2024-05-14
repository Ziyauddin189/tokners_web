import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertokners/gen/assets.gen.dart';
import 'package:fluttertokners/gen/fonts.gen.dart';
import 'package:fluttertokners/generated/l10n.dart';

class DesktopFooter extends StatelessWidget {
  const DesktopFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 100,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildTextButton(LanguageTranslation.current.our_team_c,),
            _buildTextButton(LanguageTranslation.current.tokens_c,),
            _buildTextButton( LanguageTranslation.current.connect_wallet_c,),
            _buildTextButton( LanguageTranslation.current.lightpaper_c,isLast: true),
          ],
        ),
        SizedBox(height: 100,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Assets.images.icons.icLogo.svg(),
                  const SizedBox(width: 8),
                  Assets.images.icons.icTokners.svg(),
                ],
              ),
              _buildButtonsRow(context),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    LanguageTranslation.current.all_rights,
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      fontFamily: FontFamily.centuryGothic,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    children: [
                      Assets.images.icons.icOleg.svg(),
                      Text(
                        LanguageTranslation.current.design_by,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          fontFamily: FontFamily.centuryGothic,
                          color: Colors.white,
                        ),
                      ),

                    ],
                  )
                ],
              )

            ],
          ),
        ),
        SizedBox(height: 100,),
      ],
    );
  }


  Widget _buildTextButton(String text, {bool isLast = false}) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextButton(
          onPressed: () {},
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16,
              fontFamily: FontFamily.centuryGothic,
              fontWeight: FontWeight.w700,
              color: Colors.white,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
        if (!isLast)
          Text(
            '       /       ',
            style: TextStyle(
              fontSize: 16,
              fontFamily: FontFamily.centuryGothic,
              fontWeight: FontWeight.w700,
              color: Colors.white.withOpacity(0.16),
            ),
          ),
      ],
    );
  }

  Widget _buildButtonsRow(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            Assets.images.icons.icGreyCircle.svg(),
            Positioned(
              top: 16,
              left: 8,
              right: 8,
              child: Assets.images.icons.icTwitter.svg(),
            ),
          ],
        ),
        SizedBox(width: 10,),
        Stack(
          children: [
            Assets.images.icons.icGreyCircle.svg(),
            Positioned(
              top: 16,
              left: 8,
              right: 8,
              child: Assets.images.icons.icTelegram.svg(),
            ),
          ],
        ),
        SizedBox(width: 10,),
        Stack(
          children: [
            Assets.images.icons.icGreyCircle.svg(),
            Positioned(
              top: 16,
              left: 8,
              right: 8,
              child: Assets.images.icons.icInstagram.svg(),
            ),
          ],
        ),
        SizedBox(width: 10,),
        Stack(
          children: [
            Assets.images.icons.icGreyCircle.svg(),
            Positioned(
              top: 16,
              left: 8,
              right: 8,
              child: Assets.images.icons.icMedium.svg(),
            ),
          ],
        ),
        SizedBox(width: 10,),
        Stack(
          children: [
            Assets.images.icons.icGreyCircle.svg(),
            Positioned(
              top: 16,
              left: 8,
              right: 8,
              child: Assets.images.icons.icGithub.svg(),
            ),
          ],
        ),
        SizedBox(width: 10,),
        Stack(
          children: [
            Assets.images.icons.icGreyCircle.svg(),
            Positioned(
              top: 16,
              left: 8,
              right: 8,
              child: Assets.images.icons.icReddit.svg(),
            ),
          ],
        ),

      ],
    );
  }
}



class MobileFooter extends StatelessWidget {
  const MobileFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.images.icons.icLogo.svg(),
            const SizedBox(width: 8),
            Assets.images.icons.icTokners.svg(),
          ],
        ),
        SizedBox(height: 33,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildButtonsRow(context),

          ],
        ),
        SizedBox(height: 33,),

        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              LanguageTranslation.current.all_rights,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 14,
                fontFamily: FontFamily.centuryGothic,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 3,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Assets.images.icons.icOleg.svg(),
                Text(
                  LanguageTranslation.current.design_by,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    fontFamily: FontFamily.centuryGothic,
                    color: Colors.white,
                  ),
                ),

              ],
            ),
            SizedBox(height: 42,),
          ],
        )

      ],
    );
  }
  Widget _buildButtonsRow(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            Assets.images.icons.icGreyCircle.svg(),
            Positioned(
              top: 16,
              left: 8,
              right: 8,
              child: Assets.images.icons.icTwitter.svg(),
            ),
          ],
        ),
        SizedBox(width: 10,),
        Stack(
          children: [
            Assets.images.icons.icGreyCircle.svg(),
            Positioned(
              top: 16,
              left: 8,
              right: 8,
              child: Assets.images.icons.icTelegram.svg(),
            ),
          ],
        ),
        SizedBox(width: 10,),
        Stack(
          children: [
            Assets.images.icons.icGreyCircle.svg(),
            Positioned(
              top: 16,
              left: 8,
              right: 8,
              child: Assets.images.icons.icInstagram.svg(),
            ),
          ],
        ),
        SizedBox(width: 10,),
        Stack(
          children: [
            Assets.images.icons.icGreyCircle.svg(),
            Positioned(
              top: 16,
              left: 8,
              right: 8,
              child: Assets.images.icons.icMedium.svg(),
            ),
          ],
        ),
        SizedBox(width: 10,),
        Stack(
          children: [
            Assets.images.icons.icGreyCircle.svg(),
            Positioned(
              top: 16,
              left: 8,
              right: 8,
              child: Assets.images.icons.icGithub.svg(),
            ),
          ],
        ),
        SizedBox(width: 10,),
        Stack(
          children: [
            Assets.images.icons.icGreyCircle.svg(),
            Positioned(
              top: 16,
              left: 8,
              right: 8,
              child: Assets.images.icons.icReddit.svg(),
            ),
          ],
        ),

      ],
    );
  }
}
